.class Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;
.super Ljava/lang/Object;
.source "NaviServerImpl.java"

# interfaces
.implements Lcom/ecarx/sdk/navi/IECarXLocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/navi/NaviServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ECarXLocationWrapper"
.end annotation


# instance fields
.field private final l:Lecarx/locationservice/ILocation;


# direct methods
.method constructor <init>(Lecarx/locationservice/ILocation;)V
    .registers 2
    .param p1, "location"    # Lecarx/locationservice/ILocation;

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    .line 586
    return-void
.end method


# virtual methods
.method public getAccuracy()F
    .registers 3

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getAccuracy()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 615
    :goto_6
    return v1

    .line 612
    :catch_7
    move-exception v0

    .line 613
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 615
    const/high16 v1, -0x40800000

    goto :goto_6
.end method

.method public getAdCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getAdCode()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 736
    :goto_6
    return-object v1

    .line 733
    :catch_7
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 736
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getAddress()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 656
    :goto_6
    return-object v1

    .line 652
    :catch_7
    move-exception v0

    .line 653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 656
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getAltitude()D
    .registers 4

    .prologue
    .line 621
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getAltitude()D
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 625
    :goto_6
    return-wide v1

    .line 622
    :catch_7
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 625
    const-wide/high16 v1, -0x4010000000000000L

    goto :goto_6
.end method

.method public getAoiName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getAoiName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 756
    :goto_6
    return-object v1

    .line 753
    :catch_7
    move-exception v0

    .line 754
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 756
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getBearing()F
    .registers 3

    .prologue
    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getBearing()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 645
    :goto_6
    return v1

    .line 642
    :catch_7
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 645
    const/high16 v1, -0x40800000

    goto :goto_6
.end method

.method public getCity()Ljava/lang/String;
    .registers 3

    .prologue
    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getCity()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 686
    :goto_6
    return-object v1

    .line 683
    :catch_7
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCityCode()Ljava/lang/String;
    .registers 3

    .prologue
    .line 722
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getCityCode()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 726
    :goto_6
    return-object v1

    .line 723
    :catch_7
    move-exception v0

    .line 724
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 726
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getCountry()Ljava/lang/String;
    .registers 3

    .prologue
    .line 662
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getCountry()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 666
    :goto_6
    return-object v1

    .line 663
    :catch_7
    move-exception v0

    .line 664
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 666
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDistrict()Ljava/lang/String;
    .registers 3

    .prologue
    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getDistrict()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 696
    :goto_6
    return-object v1

    .line 693
    :catch_7
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 696
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getErrorCode()I
    .registers 3

    .prologue
    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getErrorCode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 806
    :goto_6
    return v1

    .line 803
    :catch_7
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 806
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getErrorInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getErrorInfo()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 796
    :goto_6
    return-object v1

    .line 793
    :catch_7
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 796
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getGpsAccuracyStatus()I
    .registers 3

    .prologue
    .line 762
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getGpsAccuracyStatus()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 766
    :goto_6
    return v1

    .line 763
    :catch_7
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 766
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getLatitude()D
    .registers 4

    .prologue
    .line 591
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getLatitude()D
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 595
    :goto_6
    return-wide v1

    .line 592
    :catch_7
    move-exception v0

    .line 593
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 595
    const-wide/high16 v1, -0x4010000000000000L

    goto :goto_6
.end method

.method public getLocationDetail()Ljava/lang/String;
    .registers 3

    .prologue
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getLocationDetail()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 786
    :goto_6
    return-object v1

    .line 783
    :catch_7
    move-exception v0

    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 786
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getLocationType()I
    .registers 3

    .prologue
    .line 772
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getLocationType()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 776
    :goto_6
    return v1

    .line 773
    :catch_7
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 776
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getLongitude()D
    .registers 4

    .prologue
    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getLongitude()D
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    .line 605
    :goto_6
    return-wide v1

    .line 602
    :catch_7
    move-exception v0

    .line 603
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 605
    const-wide/high16 v1, -0x4010000000000000L

    goto :goto_6
.end method

.method public getPoiName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 742
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getPoiName()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 746
    :goto_6
    return-object v1

    .line 743
    :catch_7
    move-exception v0

    .line 744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 746
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getProvince()Ljava/lang/String;
    .registers 3

    .prologue
    .line 672
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getProvince()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 676
    :goto_6
    return-object v1

    .line 673
    :catch_7
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 676
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getSpeed()F
    .registers 3

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getSpeed()F
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 635
    :goto_6
    return v1

    .line 632
    :catch_7
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 635
    const/high16 v1, -0x40800000

    goto :goto_6
.end method

.method public getStreet()Ljava/lang/String;
    .registers 3

    .prologue
    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getStreet()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 706
    :goto_6
    return-object v1

    .line 703
    :catch_7
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 706
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getStreetNum()Ljava/lang/String;
    .registers 3

    .prologue
    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/ecarx/sdk/navi/NaviServerImpl$ECarXLocationWrapper;->l:Lecarx/locationservice/ILocation;

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->getStreetNum()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 716
    :goto_6
    return-object v1

    .line 713
    :catch_7
    move-exception v0

    .line 714
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 716
    const/4 v1, 0x0

    goto :goto_6
.end method
