<?php

/**
 * Class Model untuk resource absensii
 *

 */
class Absensi_model extends CI_Model
{
    /**
     * Method untuk mengambi semua data absensi
i
     *
     * @param  null|integer $mapel_id
     * @param  array        $array_where
     * @return array
     */
    public function retrieve_all($mapel_id = null, $kelas_id = null, $array_where = array()) {
        $this->db->where('mapel_id', $mapel_id);
        $this->db->where('kelas_id', $kelas_id);

        foreach ($array_where as $key => $value) {
            $this->db->where($key, $value);
        }

        $this->db->order_by('tanggal', 'DESC');
        $result = $this->db->get('absensi');
        return $result->result_array();
    }

    public function single($id)
    {
        $this->db->where('id',$id);
        return $this->db->get('absensi')->row();
    }
}