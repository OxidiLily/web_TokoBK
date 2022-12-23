<?= $this->extend('layout') ?>
<?= $this->section('content') ?>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Discount</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- Breadcrumb Section Begin -->

    
    <!-- Women Banner Section Begin -->
    <section class="women-banner spad">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3">
                    <div class="product-large set-bg " data-setbg="<?= base_url('public/fashi-master/img/products/women-large.jpg') ?>">
                        
                        
                    </div>
                    
                    <div class="product-large set-bg my-5 mt-5" data-setbg="<?= base_url('public/fashi-master/img/products/man-large.jpg') ?>">
                        
                        
                    </div>
                </div>
                <div class="col-lg-8 offset-lg-1">
                    <div class="filter-control">
                        <ul>
                            <li class="active">Discount</li>
                            
                        </ul>
                    </div>
                    <div class="container">

                        <?php foreach ($diskons as $index=>$diskon): ?>
                            <div class="text-center my-3 p-5" style="background-color: #F4F2E6;">
                                <div class="section-title">
                                    <h2>Diskon <?= $diskon->Besar_diskon ?>%</h2>
                                    <p>Tanggal Mulai Berlaku: <?= $diskon->Tanggal_mulai_berlaku ?></p>
                                    <p>Tanggal Akhir Berlaku: <?= $diskon->Tanggal_akhir_berlaku ?></p>
                                    
                                </div>
                                <div class="section-title">
                                <h3>Kode Diskon : <?= $diskon->Kode_voucher ?></h3>
                                </div>
                                <a href="<?= site_url('shop') ?>" class="primary-btn">Shop Now</a>
                            </div>
                        <?php endforeach ?>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Women Banner Section End -->
<?= $this->endSection() ?>