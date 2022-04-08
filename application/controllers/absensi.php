<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/**
 * Class untuk resource Absensi 
 *
 *
 * INDEMNITY
 * You agree to indemnify and hold harmless the authors of the Software and
 * any contributors for any direct, indirect, incidental, or consequential
 * third-party claims, actions or suits, as well as any related expenses,
 * liabilities, damages, settlements or fees arising from your use or misuse
 * of the Software, or a violation of any terms of this license.
 *
 * DISCLAIMER OF WARRANTY
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESSED OR
 * IMPLIED, INCLUDING, BUT NOT LIMITED TO, WARRANTIES OF QUALITY, PERFORMANCE,
 * NON-INFRINGEMENT, MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE.
 *
 * LIMITATIONS OF LIABILITY
 * YOU ASSUME ALL RISK ASSOCIATED WITH THE INSTALLATION AND USE OF THE SOFTWARE.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS OF THE SOFTWARE BE LIABLE
 * FOR CLAIMS, DAMAGES OR OTHER LIABILITY ARISING FROM, OUT OF, OR IN CONNECTION
 * WITH THE SOFTWARE. LICENSE HOLDERS ARE SOLELY RESPONSIBLE FOR DETERMINING THE
 * APPROPRIATENESS OF USE AND ASSUME ALL RISKS ASSOCIATED WITH ITS USE, INCLUDING
 * BUT NOT LIMITED TO THE RISKS OF PROGRAM ERRORS, DAMAGE TO EQUIPMENT, LOSS OF
 * DATA OR SOFTWARE PROGRAMS, OR UNAVAILABILITY OR INTERRUPTION OF OPERATIONS.
 */

class Absensi extends MY_Controller
{
    function __construct()
    {
        parent::__construct();

        must_login();
    }

    function edit($absensi_id)
    {
        if (!is_pengajar()) {
            redirect('pengajar');
        }

        if ($this->input->post('submit')) {
            $tanggal = $this->input->post('tanggal');
            $array = $this->input->post('id');
            $absen = $this->input->post('absen');
            $keterangan = $this->input->post('keterangan');


            $this->absensi_siswa_model->update_all($array,$absen,$keterangan);

            $this->session->set_flashdata('mapel', get_alert('success', 'Absensi baru berhasil disimpan.'));
            redirect('absensi/edit/'.$absensi_id);
        }

        # panggil colorbox
        $html_js = load_comp_js(array(
            base_url('assets/comp/colorbox/jquery.colorbox-min.js'),
        ));
        $data['comp_js']  = $html_js;
        $data['comp_css'] = load_comp_css(array(base_url('assets/comp/colorbox/colorbox.css')));

        $data['absensi'] = $this->absensi_model->single($absensi_id);
        $data['absensi_id'] = $absensi_id;

        $data['absensi_siswa']       = $this->absensi_siswa_model->retrieveWithSiswa($absensi_id);
        $data['pengajar_login'] = $this->login_model->retrieve(get_sess_data('login', 'id'));
        $data['status_id']      = get_sess_data('user', 'status_id');


        $this->twig->display('ubah-absensi.html', $data);
    }

    function add($pengajar_id,$ma_id,$kelas_id)
    {
        if (!is_pengajar()) {
            redirect('pengajar');
        }

        if ($this->input->post('submit')) {
            $tanggal = $this->input->post('tanggal');

            $this->db->insert('absensi',['tanggal' => $tanggal,
                                         'pengajar_id' => $pengajar_id,
                                         'mapel_id' => $ma_id,
                                         'kelas_id' => $kelas_id]);

            $array = $this->input->post('id_siswa');
            $absen = $this->input->post('absen');
            $keterangan = $this->input->post('keterangan');

            $id_absensis = $this->db->insert_id();


            $this->absensi_siswa_model->insert_all($id_absensis,$array,$absen,$keterangan);

            $this->session->set_flashdata('mapel', get_alert('success', 'Absensi baru berhasil disimpan.'));
            redirect('pengajar/detail_absensi/'.$pengajar_id.'/'.$ma_id.'/'.$kelas_id);
        }

        # panggil colorbox
        $html_js = load_comp_js(array(
            base_url('assets/comp/colorbox/jquery.colorbox-min.js'),
        ));
        $data['comp_js']  = $html_js;
        $data['comp_css'] = load_comp_css(array(base_url('assets/comp/colorbox/colorbox.css')));

        // $data['absensi']       = $this->absensi_siswa_model->retrieveWithSiswa($absensi_id);
        $data['list_siswa']       = $this->siswa_model->retrieveByClass($kelas_id);
        $data['pengajar_login'] = $this->login_model->retrieve(get_sess_data('login', 'id'));
        $data['status_id']      = get_sess_data('user', 'status_id');
        $data['url'] = $pengajar_id.'/'.$ma_id.'/'.$kelas_id;
       
        
        $this->twig->display('tambah-absensi.html', $data);
    }
}