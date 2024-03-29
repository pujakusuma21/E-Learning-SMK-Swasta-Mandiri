<?php

/**
 * Class Model untuk resource Ujian
 *
 */
class Ujian_model extends CI_Model
{

    /**
     * Method untuk mendapatkan semua siswa yang sedang ujian dimapel tertentu
     *
     * @param  integer $ujian_id
     * @return array
     */
    public function retrieve_all_mengerjakan($ujian_id)
    {
        $this->db->like('id', 'mengerjakan-', 'after');
        $this->db->like('id', "-$ujian_id", 'before');
        $result = $this->db->get('field_tambahan');
        return $result->result_array();
    }

    /**
     * Method untuk mendapatkan semua history siswa yang mengerjakan ujian
     *
     * @param  integer $ujian_id
     * @return array
     */
    public function retrieve_all_history($ujian_id)
    {
        $this->db->like('id', 'history-mengerjakan-', 'after');
        $this->db->like('id', "-$ujian_id", 'before');
        $result = $this->db->get('field_tambahan');
        return $result->result_array();
    }

    /**
     * Method untuk mendapatkan data nilai
     *
     * @param  integer $ujian_id
     * @return array
     * 
     */
    public function retrieve_all_nilai($ujian_id)
    {
        $this->db->where('ujian_id', $ujian_id);
        $this->db->order_by('id', 'DESC');
        $result = $this->db->get('nilai_ujian');
        return $result->result_array();
    }

    /**
     * Method untuk mendapatkan satu nilai ujian
     *
     * @param  null|integer $id
     * @param  null|integer $ujian_id
     * @param  null|integer $siswa_id
     * @return array
     * 
     */
    public function retrieve_nilai(
        $id       = null,
        $ujian_id = null,
        $siswa_id = null
    ) {
        if (!is_null($id)) {
            $id = (int)$id;
            $this->db->where('id', $id);
        }
        if (!is_null($ujian_id)) {
            $ujian_id = (int)$ujian_id;
            $this->db->where('ujian_id', $ujian_id);
        }
        if (!is_null($siswa_id)) {
            $siswa_id = (int)$siswa_id;
            $this->db->where('siswa_id', $siswa_id);
        }
        $result = $this->db->get('nilai_ujian', 1);
        return $result->row_array();
    }

    /**
     * Method untuk memperbaharui nilai ujian
     *
     * @param  integer $id
     * @param  float   $nilai
     * @param  integer $ujian_id
     * @param  integer $siswa_id
     * @return boolean true jika berhasil
     * 
     */
    public function update_nilai(
        $id,
        $nilai,
        $ujian_id,
        $siswa_id
    ) {
        $id       = (int)$id;
        $nilai    = (float)$nilai;
        $ujian_id = (int)$ujian_id;
        $siswa_id = (int)$siswa_id;

        $data = array(
            'nilai' => $nilai,
            'ujian_id' => $ujian_id,
            'siswa_id' => $siswa_id
        );
        $this->db->where('id', $id);
        $this->db->update('nilai_ujian', $data);
        return true;
    }

    /**
     * method untuk menambah nilai ujian
     *
     * @param  float   $nilai
     * @param  integer $ujian_id
     * @param  integer $siswa_id
     * @return integer last insert id
     * 
     */
    public function create_nilai(
        $nilai,
        $ujian_id,
        $siswa_id
    ) {
        $nilai    = (float)$nilai;
        $ujian_id = (int)$ujian_id;
        $siswa_id = (int)$siswa_id;

        $data = array(
            'nilai' => $nilai,
            'ujian_id' => $ujian_id,
            'siswa_id' => $siswa_id
        );
        $this->db->insert('nilai_ujian', $data);
        return $this->db->insert_id();
    }

    /**
     * Method untuk menghapus nilai berdasarkan idnya
     *
     * @param  integer $id
     * @return boolean
     * 
     */
    public function delete_nilai($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete('nilai_ujian');
    }

    /**
     * Method untuk menjadikan pilihan menjadi kunci pilihan
     *
     * @param  integer $pertanyaan_id
     * @param  integer $pilihan_id
     * 
     */
    public function create_kunci($pertanyaan_id, $pilihan_id)
    {
        $this->db->where('pertanyaan_id', $pertanyaan_id);
        $this->db->update('pilihan', array('kunci' => 0));

        $this->db->where('id', $pilihan_id);
        $this->db->update('pilihan', array('kunci' => 1));
        return true;
    }

    /**
     * Method untuk menghapus data pilihan
     *
     * @param  integer $id
     * @return boolean true jika berhasil
     * 
     */
    public function delete_pilihan($id)
    {
        $id = (int)$id;

        $this->db->where('id', $id);
        $this->db->update('pilihan', array('aktif' => 0));

        $pilihan = $this->retrieve_pilihan($id);

        $this->reorder_pilihan($pilihan['pertanyaan_id']);

        return true;
    }

    /**
     * Method untuk update urutan pilihan
     *
     * @param  integer $pertanyaan_id
     * 
     */
    public function reorder_pilihan($pertanyaan_id)
    {
        $this->db->where('pertanyaan_id', $pertanyaan_id);
        $this->db->where('aktif', 1);
        $this->db->order_by('urutan', 'ASC');
        $result = $this->db->get('pilihan');
        $result = $result->result_array();

        $o = 1;
        foreach ($result as $p) {
            # update
            $this->db->where('id', $p['id']);
            $this->db->update('pilihan', array('urutan' => $o));
            $o++;
        }

        return true;
    }

    /**
     * Method untuk mengambil banyak data pilihan
     *
     * @param  integer  $pertanyaan_id
     * @param  string   $order
     * @return array
     * 
     */
    public function retrieve_all_pilihan(
        $pertanyaan_id,
        $order = "ASC"
    ) {
        $this->db->order_by('urutan', $order);
        $this->db->where('aktif', 1);
        $this->db->where('pertanyaan_id', $pertanyaan_id);
        $result = $this->db->get('pilihan');
        return $result->result_array();
    }

    /**
     * Method untuk mendapatkan satu data pilihan
     *
     * @param  integer $id
     * @return array
     * 
     */
    public function retrieve_pilihan($id, $pertanyaan_id = null)
    {
        $id = (int)$id;

        if (!empty($pertanyaan_id)) {
            $this->db->where('pertanyaan_id', $pertanyaan_id);
        }

        $this->db->where('id', $id);
        $result = $this->db->get('pilihan', 1);
        return $result->row_array();
    }

    /**
     * Method untuk memperbaharui data pilihan
     *
     * @param  integer $id
     * @param  integer $pertanyaan_id
     * @param  string  $konten
     * @param  integer $kunci
     * @param  integer $urutan
     * @return boolan true jika berhasil
     * 
     */
    public function update_pilihan(
        $id,
        $pertanyaan_id,
        $konten,
        $kunci,
        $urutan
    ) {
        $id            = (int)$id;
        $pertanyaan_id = (int)$pertanyaan_id;
        $kunci         = (int)$kunci;
        $urutan        = (int)$urutan;

        $data = array(
            'pertanyaan_id' => $pertanyaan_id,
            'konten'        => $konten,
            'kunci'         => $kunci,
            'urutan'        => $urutan
        );
        $this->db->where('id', $id);
        $this->db->update('pilihan', $data);
        return true;
    }

    /**
     * Method untuk manambah pilihan pada petanyaan
     *
     * @param  integer $pertanyaan_id
     * @param  string  $konten
     * @param  integer $kunci
     * @return array   last insert id
     * 
     */
    public function create_pilihan(
        $pertanyaan_id,
        $konten,
        $kunci,
        $urutan = null
    ) {
        $pertanyaan_id = (int)$pertanyaan_id;
        $kunci         = (int)$kunci;

        if (empty($urutan)) {
            $this->db->select('MAX(urutan) AS max');
            $this->db->where('pertanyaan_id', $pertanyaan_id);
            $this->db->where('aktif', 1);
            $query = $this->db->get('pilihan');
            $row = $query->row_array();
            if (!isset($row['max']) OR empty($row['max'])) {
                $row['max'] = 1;
            } else {
                $row['max'] = $row['max'] + 1;
            }
            $urutan = $row['max'];
        }

        $data = array(
            'pertanyaan_id' => $pertanyaan_id,
            'konten'        => $konten,
            'kunci'         => $kunci,
            'urutan'        => $urutan
        );
        $this->db->insert('pilihan', $data);
        return $this->db->insert_id();
    }

    /**
     * Method untuk menghapus data pertanyaan
     *
     * @param  integer $id
     * @return boolan  true jika berhasil
     * 
     */
    public function delete_pertanyaan($id)
    {
        $id = (int)$id;

        $this->db->where('id', $id);
        $this->db->update('ujian_pertanyaan', array('aktif' => 0));

        $pertanyaan = $this->retrieve_pertanyaan($id);

        # reorder
        $this->reorder_pertanyaan($pertanyaan['ujian_id']);
    }

    /**
     * Method untuk mengurutkan kembali urutan pertanyaan
     *
     * @param  integer $ujian_id
     * @return boolan  true jika berhasil
     * 
     */
    private function reorder_pertanyaan($ujian_id)
    {
        # ambil semua pertanyaan yang aktif
        $this->db->where('aktif' , 1);
        $this->db->where('ujian_id', $ujian_id);
        $this->db->order_by('urutan', 'ASC');
        $result = $this->db->get('ujian_pertanyaan');
        $result = $result->result_array();

        $o = 1;
        foreach ($result as $p) {
            # update
            $this->db->where('id', $p['id']);
            $this->db->update('ujian_pertanyaan', array(
                'urutan' => $o
            ));

            $o++;
        }

        return true;
    }

    /**
     * Method untuk mendapatkan banyak data pertanyaan
     *
     * @param  integer      $no_of_records
     * @param  integer      $page_no
     * @param  integer|null $ujian_id
     * @return array
     * 
     */
    public function retrieve_all_pertanyaan(
        $no_of_records = 10,
        $page_no       = 1,
        $ujian_id      = null,
        $sort          = 'ASC'
    ) {
        if ($no_of_records == 'all') {
            if (!is_null($ujian_id)) {
                $this->db->where('ujian_id', $ujian_id);
            }
            $this->db->where('aktif', 1);
            $this->db->order_by('urutan', $sort);
            $result = $this->db->get('ujian_pertanyaan');
            $data   = $result->result_array();

        } else {
            $no_of_records = (int)$no_of_records;
            $page_no       = (int)$page_no;

            $where = array();
            if (!is_null($ujian_id)) {
                $ujian_id = (int)$ujian_id;
                $where['ujian_id'] = array($ujian_id, 'where');
            }

            # tampilkan hanya yang aktif saja
            $where['aktif'] = array(1, 'where');

            $orderby = array('urutan' => $sort);

            $data = $this->pager->set('ujian_pertanyaan', $no_of_records, $page_no, $where, $orderby);
        }

        return $data;
    }

    /**
     * Method untuk menghitung jumlah total pertanyaan berdasarkan ujian_id
     *
     * @param  integer $ujian_id
     * @return integer
     * 
     */
    public function count_pertanyaan($ujian_id)
    {
        $this->db->where('aktif' , 1);
        $this->db->where('ujian_id', $ujian_id);
        $result = $this->db->get('ujian_pertanyaan');
        return $result->num_rows();
    }

    /**
     * Method untuk mendapatkan satu data pertanyaan
     *
     * @param  integer $id
     * @return array
     * 
     */
    public function retrieve_pertanyaan($id)
    {
        $id = (int)$id;

        $this->db->where('id', $id);
        $result = $this->db->get('ujian_pertanyaan', 1);
        return $result->row_array();
    }

    /**
     * Method untuk memperbaharui pertanyaan
     *
     * @param  integer $id
     * @param  string  $pertanyaan
     * @param  integer $urutan
     * @param  integer $ujian_id
     * @return boolean true jika berhasil
     * 
     */
    public function update_pertanyaan(
        $id,
        $pertanyaan,
        $urutan,
        $ujian_id
    ) {
        $id       = (int)$id;
        $urutan   = (int)$urutan;
        $ujian_id = (int)$ujian_id;

        $data = array(
            'pertanyaan' => $pertanyaan,
            'urutan'     => $urutan,
            'ujian_id'   => $ujian_id
        );
        $this->db->where('id', $id);
        $this->db->update('ujian_pertanyaan', $data);
        return true;
    }

    /**
     * Method untuk menambah pertanyaan
     *
     * @param  string  $pertanyaan
     * @param  integer $ujian_id
     * @return integer last insert id
     * 
     */
    public function create_pertanyaan(
        $pertanyaan,
        $ujian_id,
        $urutan = null
    ) {
        $ujian_id = (int)$ujian_id;

        if (empty($urutan)) {
            $this->db->select('MAX(urutan) AS max');
            $this->db->where('ujian_id', $ujian_id);
            $this->db->where('aktif', 1);
            $query = $this->db->get('ujian_pertanyaan');
            $row = $query->row_array();
            if (!isset($row['max']) OR empty($row['max'])) {
                $row['max'] = 1;
            } else {
                $row['max'] = $row['max'] + 1;
            }
            $urutan = $row['max'];
        }

        $data = array(
            'pertanyaan' => $pertanyaan,
            'urutan'     => $urutan,
            'ujian_id'   => $ujian_id
        );
        $this->db->insert('ujian_pertanyaan', $data);
        return $this->db->insert_id();
    }

    /**
     * Method untuk menghapus ujian
     *
     * @param  integer $id
     * @return boolean true jika berhasil
     * 
     */
    public function delete($id)
    {
        $id = (int)$id;

        $this->db->where('id', $id);
        $this->db->delete('ujian');
        return true;
    }

    /**
     * Method untuk mendapatkan banyak data ujian
     *
     * @param  integer $no_of_records
     * @param  integer $page_no
     * @param  array   $mapel_id
     * @param  array   $pengajar_id
     * @param  array   $type_id
     * @param  array   $kelas_id
     * @param  string  $judul
     * @param  string  $info
     * @param  array   $aktif
     * @return array
     *
     * 
     */
    public function retrieve_all(
        $no_of_records = 10,
        $page_no       = 1,
        $mapel_id      = array(),
        $pengajar_id   = array(),
        $type_id       = array(),
        $kelas_id      = array(),
        $judul         = null,
        $info          = null,
        $aktif         = array(),
        $pagination    = true
    ) {
        $no_of_records = (int)$no_of_records;
        $page_no       = (int)$page_no;

        $where    = array();
        $group_by = array();
        if (!empty($pengajar_id)) {
            $where['ujian.pengajar_id'] = array($pengajar_id, 'where_in');
        }
        if (!empty($siswa_id)) {
            $where['ujian.siswa_id'] = array($siswa_id, 'where_in');
        }
        if (!empty($mapel_id)) {
            $where['ujian.mapel_id'] = array($mapel_id, 'where_in');
        }
        if (!empty($kelas_id)) {
            $where['ujian_kelas']          = array('ujian.id = ujian_kelas.ujian_id', 'join', 'inner');
            $where['ujian_kelas.kelas_id'] = array($kelas_id, 'where_in');
            $group_by[] = 'ujian.id';
        }
        if (!empty($type_id)) {
            $where['ujian.type_id'] = array($type_id, 'where_in');
        }
        $like = 0;
        if (!empty($judul)) {
            $where['ujian.judul'] = array($judul, 'like');
            $like = 1;
        }
        if (!empty($info)) {
            if ($like) {
                $value = array($like, 'or_like');
            } else {
                $value = array($like, 'like');
            }
            $where['ujian.info'] = array($like, 'like');
        }
        if (!empty($aktif)) {
            $where['ujian.aktif'] = array($aktif, 'where_in');
        }

        if (is_siswa()) {
            $where['ujian.tampil_siswa'] = array(1, 'where');
            $orderby = array('ujian.id' => 'DESC', 'ujian.aktif' => 'DESC');
        } else {
            $orderby = array('ujian.id' => 'DESC');
        }

        if ($pagination) {
            $data = $this->pager->set('ujian', $no_of_records, $page_no, $where, $orderby, 'ujian.*', $group_by);
        } else {
            # cari jumlah semua pengajar
            $no_of_records = $this->db->count_all('ujian');
            $search_all    = $this->pager->set('ujian', $no_of_records, $page_no, $where, $orderby, 'ujian.*', $group_by);
            $data          = $search_all['results'];
        }

        return $data;
    }

    /**
     * Method untuk mendapatkan satu record ujian
     *
     * @param  integer $id
     * @param  integer $mepal_id
     * @param  integer $type_id
     * @return array
     * 
     */
    public function retrieve($id, $mapel_id = null, $type_id = null)
    {
        $id = (int)$id;
        if (!is_null($mapel_id)) {
            $mapel_id = (int)$mapel_id;
            $this->db->where('mapel_id', $mapel_id);
        }
        if (!is_null($type_id)) {
            $type_id = (int)$type_id;
            $this->db->where('type_id', $type_id);
        }

        $this->db->where('id', $id);
        $result = $this->db->get('ujian', 1);
        return $result->row_array();
    }

    /**
     * Method untuk mendapatkan kelas ujian
     *
     * @param  integer $ujian_id
     * @param  integer $kelas_id
     * @return array
     *
     * 
     */
    public function retrieve_all_kelas($ujian_id = null, $kelas_id = null)
    {
        if (!empty($ujian_id)) {
            $this->db->where('ujian_id', $ujian_id);
        }

        if (!empty($kelas_id)) {
            $this->db->where('kelas_id', $kelas_id);
        }

        $result = $this->db->get('ujian_kelas');
        return $result->result_array();
    }

    /**
     * Method untuk mendapatkan satu data kelas ujian
     *
     * @param  integer|null $id
     * @param  integer|null $ujian_id
     * @param  integer|null $kelas_id
     * @return array
     *
     * 
     */
    public function retrieve_kelas($id = null, $ujian_id = null, $kelas_id = null)
    {
        if (!empty($id)) {
            $this->db->where('id', $id);
        }
        if (!empty($ujian_id)) {
            $this->db->where('ujian_id', $ujian_id);
        }
        if (!empty($kelas_id)) {
            $this->db->where('kelas_id', $kelas_id);
        }

        $result = $this->db->get('ujian_kelas');
        return $result->row_array();
    }

    /**
     * Method untuk mengapus kelas ujian
     *
     * @param  integer $id
     * @return boolean
     *
     * 
     */
    public function delete_kelas($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('ujian_kelas');
        return true;
    }

    /**
     * Method untuk update kelas ujian
     *
     * @param  integer $id
     * @param  integer $ujian_id
     * @param  integer $kelas_id
     * @return boolean
     *
     * 
     */
    public function update_kelas($id, $ujian_id, $kelas_id)
    {
        $this->db->update('ujian_kelas', array(
            'ujian_id' => $ujian_id,
            'kelas_id' => $kelas_id
        ), array(
            'id' => $id
        ));

        return true;
    }

    /**
     * Method untuk menambah ujian kelas
     *
     * @param  integer $ujian_id
     * @param  integer $kelas_id
     * @return integer last insert id
     * 
     */
    public function create_kelas($ujian_id, $kelas_id)
    {
        $this->db->insert('ujian_kelas', array(
            'ujian_id' => $ujian_id,
            'kelas_id' => $kelas_id
        ));

        return $this->db->insert_id();
    }

    /**
     * Method untuk memperbaharui ujian
     *
     * @param  integer $id
     * @param  integer $mapel_id
     * @param  integer $pengajar_id
     * @param  integer $type_id
     * @param  string  $judul
     * @param  string  $info
     * @param  string  $tgl_buka
     * @param  string  $tgl_tutup
     * @param  integer $durasi
     * @return boolean true jika berhasil
     * 
     */
    public function update(
        $id,
        $mapel_id,
        $pengajar_id,
        $type_id,
        $judul,
        $durasi = null,
        $info   = '',
        $aktif  = 0
    ) {
        $id          = (int)$id;
        $mapel_id    = (int)$mapel_id;
        $type_id     = (int)$type_id;
        $pengajar_id = (int)$pengajar_id;

        $data = array(
            'mapel_id'    => $mapel_id,
            'pengajar_id' => $pengajar_id,
            'type_id'     => $type_id,
            'judul'       => $judul,
            'info'        => $info,
            'durasi'      => $durasi,
            'aktif'       => $aktif
        );
        $this->db->where('id', $id);
        $this->db->update('ujian', $data);
        return true;
    }

    /**
     * Method untuk ubah status ujian jadi aktif
     *
     * @param  integer $id
     * @return boolean true
     *
     * 
     */
    public function terbitkan($id)
    {
        $this->db->where('id', $id);
        $this->db->update('ujian', array('aktif' => 1, 'tampil_siswa' => 1));
        return true;
    }

    /**
     * Method untuk ubah status ujian jadi tutup
     *
     * @param  integer $id
     * @return boolean true
     *
     * 
     */
    public function tutup($id)
    {
        $this->db->where('id', $id);
        $this->db->update('ujian', array('aktif' => 0));
        return true;
    }

    /**
     * Method untuk menambah ujian
     *
     * @param  integer $mapel_id
     * @param  integer $pengajar_id
     * @param  integer $type_id
     * @param  string  $judul
     * @param  string  $info
     * @param  integer $durasi
     * @return integer last insert id
     * 
     */
    public function create(
        $mapel_id,
        $pengajar_id,
        $type_id,
        $judul,
        $durasi = null,
        $info   = ''
    ) {
        $mapel_id    = (int)$mapel_id;
        $type_id     = (int)$type_id;
        $pengajar_id = (int)$pengajar_id;

        $data = array(
            'mapel_id'    => $mapel_id,
            'pengajar_id' => $pengajar_id,
            'type_id'     => $type_id,
            'judul'       => $judul,
            'info'        => $info,
            'durasi'      => $durasi,
            'aktif'       => 0,
            'tgl_buat'    => date('Y-m-d H:i:s')
        );
        $this->db->insert('ujian', $data);
        return $this->db->insert_id();
    }

}
