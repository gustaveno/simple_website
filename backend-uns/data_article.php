<?php include"header.php"; ?>

<!--main content start-->
<section id="main-content">
  <section class="wrapper">
    <div class="row">
      <div class="col-lg-12">
        <h3 class="page-header"><i class="fa fa-table"></i> Data Artikel</h3>
        <ol class="breadcrumb">
          <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
          <li><i class="fa fa-table"></i>Table</li>
          <li><i class="fa fa-th-list"></i>Basic Table</li>
        </ol>
      </div>
    </div>
    <!-- page start-->

    <a class="btn btn-primary" href="add_data_article.php"><i class="icon_plus_alt2"></i> Add Data</a>

    <div class="row">
      <div class="col-lg-12">
        <section class="panel">
          <header class="panel-heading">
            Advanced Table
          </header>

          <table class="table table-striped table-advance table-hover">
            <tbody>
              <tr>
                <th><i class="icon_profile"></i> Judul Artikel</th>
                <th><i class="icon_pencil"></i> Isi Artikel</th>
                <th><i class="icon_mobile"></i> Gambar Artikel</th>
                <th><i class="icon_calendar"></i> Tanggal Ditambahkan</th>
                <th><i class="icon_cogs"></i> Action</th>
              </tr>
              <?php  
                include 'koneksi.php';

                // statement showing data
                $statement = "SELECT * FROM tb_article";

                // run statement
                $sql = mysqli_query($koneksi, $statement);

                //looping for show data
                while ($row = mysqli_fetch_array($sql)) {

              ?>
              <!-- this tr tag inside php looping -->
              <tr>
                <td><?php echo $row['title']; ?></td>
                <td><?php echo $row['content']; ?></td>
                <td><img width="120" height="90" src="gambar_artikel/<?php echo $row['image']; ?>"></td>
                <td><?php echo $row['added_on']; ?></td>
                <td>
                  <div class="btn-group">
                    <a class="btn btn-success" href="#"><i class="icon_check_alt2"></i></a>
                    <a class="btn btn-danger" href="#"><i class="icon_close_alt2"></i></a>
                  </div>
                </td>
              </tr>

              <?php } ?>
            </tbody>
          </table>
        </section>
      </div>
    </div>
    <!-- page end-->
  </section>
</section>
<!--main content end-->
<?php include"footer.php"; ?>