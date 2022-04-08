<?php

/**
 * Class Model untuk resource absensii
 *
 */
class Absensi_siswa_model extends CI_Model
{
    /**
     * Method untuk mengambi semua data absensi_siswa
i
     *
     * @param  null|integer $absensi_id
     * @param  array        $array_where
     * @return array
     */
    public function retrieve_all($absensi_id = null, $array_where = array()) {
        $this->db->where('absensi_id', $absensi_id);
        

        foreach ($array_where as $key => $value) {
            $this->db->where($key, $value);
        }

        $result = $this->db->get('absensi_siswa');
        return $result->result_array();
    }

    public function retrieve_all_child($show_not_active = false)
    {
        $this->db->where('absensi_id !=', '0');
        if (!$show_not_active) {
            $this->db->where('ket', 1);
        }
        $this->db->order_by('absensi_id', 'DESC');
        $result = $this->db->get('absensi_siswa');
        return $result->result_array();
    }

    /**
     * Method untuk mengambil satu record data absensi_siswa
i
     *
     * @param  integer $id
     * @return array
     */
    public function retrieve($id, $show_not_active = false)
    {
        $id = (int)$id;
        $this->db->where('id', $id);
        if (!$show_not_active) {
            $this->db->where('ket', 1);
        }
        $result = $this->db->get('absensi_siswa');
        return $result->row_array();
    }

    /**
     * Method untuk menambah data absensi_siswa
i
     *
     * @param  string       $siswa_id
     * @param  integer|null $absensi_id
     * @return integer      last insert id
     */
    public function create(
        $siswa_id,
        $absensi_id = null
    ) {
        if (!is_null($absensi_id)) {
            $absensi_id = (int)$absensi_id;
        }

        $this->db->select('MAX(absensi_id) AS absensi_id');
        $query = $this->db->get('absensi_siswa');
        $row   = $query->row_array();
        if (empty($row['absensi_id'])) {
            $row['absensi_id'] = 1;
        } else {
            $row['absensi_id'] = $row['absensi_id'] + 1;
        }

        $data = array(
            'absensi_id' => $absensi_id,
            'absensi_id'    => $row['absensi_id']
        );
        $this->db->insert('absensi_siswa', $data);
        return $this->db->insert_id();
    }

    /**
     * Method untuk memperbaharui record absensi_siswa
i
     *
     * @param  integer      $id
     * @param  integer|null $absensi_id
     * @return boolean      true jika berhasil
    
     */
    public function update(
        $id,
        $absensi_id = null,
        $siswa_id,
        $jenis_kehadiran,
        $ket
    ) {
        $id     = (int)$id;
        $absensi_id = (int)$absensi_id;
        $siswa_id = (int)$siswa_id;
        $jenis_kehadiran = (int)$jenis_kehadiran;
        $ket  = $ket;

        if (!is_null($absensi_id)) {
            $absensi_id = (int)$absensi_id;
        }

        $data = array(
            'siswa_id'      => $siswa_id,
            'absensi_id' => $absensi_id,
            'jenis_kehadiran'    => $jenis_kehadiran,
            'ket'     => $ket,
        );
        $this->db->where('id', $id);
        $this->db->update('absensi_siswa', $data);
        return true;
    }

    /**
     * Method untuk menghapus record absensi_siswa
i
     *
     * @param  integer $id
     * @return boolean true jika berhasil
     */
    public function delete($id)
    {
        $id = (int)$id;
        $this->db->where('id', $id);
        $this->db->delete('absensi_siswa');
        return true;
    }

    /**
     * Method untuk menambah data absensi_siswa
i siswa
     *
     * @param  integer  $jenis_kehadiran
     * @param  integer  $siswa_id
     * @param  integer  $ket
     * @return integer  last insert id
     */
    public function create_siswa(
        $jenis_kehadiran,
        $siswa_id,
        $ket = 0
    ) {
        $jenis_kehadiran = (int)$jenis_kehadiran;
        $siswa_id = (int)$siswa_id;
        $ket    = $ket;

        $data = array(
            'jenis_kehadiran' => $jenis_kehadiran,
            'siswa_id' => $siswa_id,
            'ket'    => $ket
        );

        $this->db->insert('absensi_siswa', $data);
        return $this->db->insert_id();
    }

    /**
     * Method untuk memperbaharui absensi_siswa
i siswa
     *
     * @param  integer $id
     * @param  integer $jenis_kehadiran
     * @param  integer $siswa_id
     * @param  integer $ket
     * @return boolean true jika berhasil
   
     */
    public function update_siswa(
        $id,
        $siswa_id,
        $jenis_kehadiran,
        $ket
    ) {
        $id       = (int)$id;
        $siswa_id = (int)$siswa_id;
        $jenis_kehadiran = (int)$jenis_kehadiran;
        $ket    = $ket;

        $data = array(
            'siswa_id' => $siswa_id,
            'jenis_kehadiran' => $jenis_kehadiran,
            'ket'    => $ket
        );
        $this->db->where('id', $id);
        $this->db->update('absensi_siswa', $data);
        return true;
    }

    /**
     * Method untuk mengambil satu data absensi_siswa
i siswa berdasarkan id atau konsisi tertentu
     *
     * @param  null|integer $id
     * @param  null|array   $array_where contoh :
     * <code>
     * $array_where = array(
     *     'jenis_kehadiran' => 1,
     *     'ket' => 0
     * );
     * </code>
     * @return array
    
     */
    public function retrieve_siswa($id = null, $array_where = null)
    {
        if (!is_null($id)) {
            $id = (int)$id;
            $this->db->where('id', $id);
        } elseif (is_array($array_where)) {
            foreach ($array_where as $key => $value) {
                $this->db->where($key, $value);
            }
        }

        $result = $this->db->get('absensi_siswa', '1');
        return $result->row_array();
    }

    /**
     * Method untuk mengambil semua data absensi_siswa
i siswa
     *
     * @param  integer      $no_of_records
     * @param  integer      $page_no
     * @param  null|array   $array_where
     * @return array

     */
    public function retrieve_all_siswa(
        $no_of_records = 10,
        $page_no       = 1,
        $array_where   = null
    ) {
        $no_of_records = (int)$no_of_records;
        $page_no       = (int)$page_no;

        $where = array();
        if (!is_null($array_where) AND is_array($array_where)) {
            foreach ($array_where as $key => $value) {
                $where[$key] = array($value, 'where');
            }
        }

        $order_by = array('id' => 'DESC');
        $data = $this->pager->set('absensi_siswa', $no_of_records, $page_no, $where, $order_by);

        return $data;
    }

    /**
     * Method untuk menghapus absensi_siswa
i siswa
     *
     * @param  integer $id
     * @return boolean true jika berhasil
    
     */
    public function delete_absensi($id)
    {
        $id = (int)$id;

        $this->db->where('id', $id);
        $this->db->delete('absensi_siswa');
        return true;
    }

    public function retrieveWithSiswa($absensi_id)
    {
        $id = (int) $absensi_id;

        $this->db->select('absensi_siswa.*, absensi_siswa.id as ids');
        $this->db->from('absensi_siswa');
        $this->db->join('siswa a', 'a.id=absensi_siswa.siswa_id', 'left');
        $this->db->where('absensi_siswa.absensi_id',$id);
        $result = $this->db->get();
        return $result->result();
        
    }

    public function insert_all($absensi_id,$array,$absen,$keterangan)
    {
        $data = [];
        foreach ($array as $key => $value) {
            $data[] = [
                'absensi_id' => $absensi_id,
                'siswa_id'  => $value,
                'jenis_kehadiran' => $absen[$value],
                'ket' => $keterangan[$key]
            ];
        }

        $this->db->insert_batch('absensi_siswa',$data);
    }

    public function update_all($array,$absen,$keterangan)
    {
        $data = [];
        foreach ($array as $key => $value) {
            $data[] = [
                'id'  => $value,
                'jenis_kehadiran' => $absen[$value],
                'ket' => $keterangan[$key]
            ];
        }

        // echo "<pre>";
        // var_dump($data);
        // echo "</pre>";
        // exit;


        $this->db->update_batch('absensi_siswa',$data,'id');
    }
}
