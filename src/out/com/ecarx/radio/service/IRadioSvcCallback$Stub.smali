.class public abstract Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;
.super Landroid/os/Binder;
.source "IRadioSvcCallback.java"

# interfaces
.implements Lcom/ecarx/radio/service/IRadioSvcCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/radio/service/IRadioSvcCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/radio/service/IRadioSvcCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.radio.service.IRadioSvcCallback"

.field static final TRANSACTION_onAudioPolicyChanged:I = 0x11

.field static final TRANSACTION_onCarouselStart:I = 0xb

.field static final TRANSACTION_onCarouserSeek:I = 0xd

.field static final TRANSACTION_onCarouserStop:I = 0xc

.field static final TRANSACTION_onCityChanged:I = 0xe

.field static final TRANSACTION_onCurrentBand:I = 0x3

.field static final TRANSACTION_onCurrentFrequency:I = 0x4

.field static final TRANSACTION_onFavouriteChanged:I = 0xf

.field static final TRANSACTION_onOpenRadioResult:I = 0x1

.field static final TRANSACTION_onPlayListChanged:I = 0x10

.field static final TRANSACTION_onQualityChanged:I = 0xa

.field static final TRANSACTION_onRadioClosed:I = 0x2

.field static final TRANSACTION_onScanStarted:I = 0x8

.field static final TRANSACTION_onScanStopped:I = 0x9

.field static final TRANSACTION_onSeekStarted:I = 0x6

.field static final TRANSACTION_onSeekStopped:I = 0x7

.field static final TRANSACTION_onStation:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/radio/service/IRadioSvcCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ecarx/radio/service/IRadioSvcCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ecarx/radio/service/IRadioSvcCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_146

    .line 201
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_9
    return v4

    .line 42
    :sswitch_a
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    move v0, v4

    .line 50
    .local v0, "_arg0":Z
    :cond_1c
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onOpenRadioResult(Z)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 56
    .end local v0    # "_arg0":Z
    :sswitch_23
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    move v0, v4

    .line 59
    .restart local v0    # "_arg0":Z
    :cond_2f
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onRadioClosed(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Z
    :sswitch_36
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 68
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCurrentBand(I)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 74
    .end local v0    # "_arg0":I
    :sswitch_46
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCurrentFrequency(I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 83
    .end local v0    # "_arg0":I
    :sswitch_56
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onStation(I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 92
    .end local v0    # "_arg0":I
    :sswitch_66
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onSeekStarted(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 101
    .end local v0    # "_arg0":I
    :sswitch_76
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_82

    move v0, v4

    .line 104
    .local v0, "_arg0":Z
    :cond_82
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onSeekStopped(Z)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    .line 110
    .end local v0    # "_arg0":Z
    :sswitch_89
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 113
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onScanStarted(I)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 119
    .end local v0    # "_arg0":I
    :sswitch_9a
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a6

    move v0, v4

    .line 122
    .local v0, "_arg0":Z
    :cond_a6
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onScanStopped(Z)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 128
    .end local v0    # "_arg0":Z
    :sswitch_ae
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ba

    move v0, v4

    .line 131
    .restart local v0    # "_arg0":Z
    :cond_ba
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onQualityChanged(Z)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 137
    .end local v0    # "_arg0":Z
    :sswitch_c2
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ce

    move v0, v4

    .line 140
    .restart local v0    # "_arg0":Z
    :cond_ce
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCarouselStart(Z)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 146
    .end local v0    # "_arg0":Z
    :sswitch_d6
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 149
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCarouserStop(I)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 155
    .end local v0    # "_arg0":I
    :sswitch_e7
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 160
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCarouserSeek(IJ)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 166
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":J
    :sswitch_fc
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    sget-object v5, Lcom/ecarx/radio/service/IFrequency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 169
    .local v1, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p0, v1}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onCityChanged(Ljava/util/List;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 175
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_10f
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    sget-object v5, Lcom/ecarx/radio/service/IFrequency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 178
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p0, v1}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onFavouriteChanged(Ljava/util/List;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 184
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_122
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    sget-object v5, Lcom/ecarx/radio/service/IFrequency;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 187
    .restart local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p0, v1}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onPlayListChanged(Ljava/util/List;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 193
    .end local v1    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_135
    const-string v5, "com.ecarx.radio.service.IRadioSvcCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->onAudioPolicyChanged(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    .line 38
    :sswitch_data_146
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_46
        0x5 -> :sswitch_56
        0x6 -> :sswitch_66
        0x7 -> :sswitch_76
        0x8 -> :sswitch_89
        0x9 -> :sswitch_9a
        0xa -> :sswitch_ae
        0xb -> :sswitch_c2
        0xc -> :sswitch_d6
        0xd -> :sswitch_e7
        0xe -> :sswitch_fc
        0xf -> :sswitch_10f
        0x10 -> :sswitch_122
        0x11 -> :sswitch_135
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
