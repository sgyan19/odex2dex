.class public abstract Lcom/ecarx/radio/service/IRadioSvc$Stub;
.super Landroid/os/Binder;
.source "IRadioSvc.java"

# interfaces
.implements Lcom/ecarx/radio/service/IRadioSvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/radio/service/IRadioSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecarx/radio/service/IRadioSvc$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.ecarx.radio.service.IRadioSvc"

.field static final TRANSACTION_addFavourite:I = 0x12

.field static final TRANSACTION_closeRadio:I = 0x2

.field static final TRANSACTION_getBand:I = 0x9

.field static final TRANSACTION_getFavouriteList:I = 0xe

.field static final TRANSACTION_getFrequency:I = 0xa

.field static final TRANSACTION_getFrequencyList:I = 0xd

.field static final TRANSACTION_getPlayList:I = 0xf

.field static final TRANSACTION_openRadioAsync:I = 0x1

.field static final TRANSACTION_pause:I = 0x11

.field static final TRANSACTION_play:I = 0x10

.field static final TRANSACTION_scanAsync:I = 0x6

.field static final TRANSACTION_seekAsync:I = 0x5

.field static final TRANSACTION_setBandAsync:I = 0x3

.field static final TRANSACTION_setFrequency:I = 0x4

.field static final TRANSACTION_startCarousel:I = 0xb

.field static final TRANSACTION_stopCarousel:I = 0xc

.field static final TRANSACTION_stopSeekOrScanAsync:I = 0x7

.field static final TRANSACTION_tuneAsync:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/ecarx/radio/service/IRadioSvc;
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
    const-string v1, "com.ecarx.radio.service.IRadioSvc"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/ecarx/radio/service/IRadioSvc;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/ecarx/radio/service/IRadioSvc;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/ecarx/radio/service/IRadioSvc$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 12
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_196

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_9
    return v5

    .line 42
    :sswitch_a
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/radio/service/IRadioSvcCallback;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Lcom/ecarx/radio/service/IRadioSvcCallback;
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->openRadioAsync(Lcom/ecarx/radio/service/IRadioSvcCallback;)Z

    move-result v2

    .line 51
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    if-eqz v2, :cond_27

    move v4, v5

    :cond_27
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 57
    .end local v0    # "_arg0":Lcom/ecarx/radio/service/IRadioSvcCallback;
    .end local v2    # "_result":Z
    :sswitch_2b
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/ecarx/radio/service/IRadioSvcCallback;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Lcom/ecarx/radio/service/IRadioSvcCallback;
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->closeRadio(Lcom/ecarx/radio/service/IRadioSvcCallback;)Z

    move-result v2

    .line 61
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v2, :cond_42

    move v4, v5

    :cond_42
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 67
    .end local v0    # "_arg0":Lcom/ecarx/radio/service/IRadioSvcCallback;
    .end local v2    # "_result":Z
    :sswitch_46
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 70
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->setBandAsync(I)Z

    move-result v2

    .line 71
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v2, :cond_59

    move v4, v5

    :cond_59
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 77
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_5d
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->setFrequency(I)Z

    move-result v2

    .line 81
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v2, :cond_70

    move v4, v5

    :cond_70
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 87
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_74
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 90
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->seekAsync(I)Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_87

    move v4, v5

    :cond_87
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 97
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_8c
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->scanAsync()Z

    move-result v2

    .line 99
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v2, :cond_9b

    move v4, v5

    :cond_9b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 105
    .end local v2    # "_result":Z
    :sswitch_a0
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->stopSeekOrScanAsync()Z

    move-result v2

    .line 107
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    if-eqz v2, :cond_af

    move v4, v5

    :cond_af
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 113
    .end local v2    # "_result":Z
    :sswitch_b4
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->tuneAsync(I)Z

    move-result v2

    .line 117
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v2, :cond_c7

    move v4, v5

    :cond_c7
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 123
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_cc
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->getBand()I

    move-result v2

    .line 125
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    .end local v2    # "_result":I
    :sswitch_dd
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->getFrequency()I

    move-result v2

    .line 133
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 139
    .end local v2    # "_result":I
    :sswitch_ee
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->startCarousel(I)Z

    move-result v2

    .line 143
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v2, :cond_101

    move v4, v5

    :cond_101
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 149
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Z
    :sswitch_106
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->stopCarousel()Z

    move-result v2

    .line 151
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    if-eqz v2, :cond_115

    move v4, v5

    :cond_115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 157
    .end local v2    # "_result":Z
    :sswitch_11a
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->getFrequencyList()Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 165
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_12b
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->getFavouriteList()Ljava/util/List;

    move-result-object v3

    .line 167
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 173
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_13c
    const-string v4, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->getPlayList()Ljava/util/List;

    move-result-object v3

    .line 175
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 181
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    :sswitch_14d
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->play()Z

    move-result v2

    .line 183
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    if-eqz v2, :cond_15c

    move v4, v5

    :cond_15c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 189
    .end local v2    # "_result":Z
    :sswitch_161
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->pause()Z

    move-result v2

    .line 191
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v2, :cond_170

    move v4, v5

    :cond_170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 197
    .end local v2    # "_result":Z
    :sswitch_175
    const-string v6, "com.ecarx.radio.service.IRadioSvc"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_194

    move v1, v5

    .line 202
    .local v1, "_arg1":Z
    :goto_185
    invoke-virtual {p0, v0, v1}, Lcom/ecarx/radio/service/IRadioSvc$Stub;->addFavourite(IZ)Z

    move-result v2

    .line 203
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v2, :cond_18f

    move v4, v5

    :cond_18f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :cond_194
    move v1, v4

    .line 201
    goto :goto_185

    .line 38
    :sswitch_data_196
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_74
        0x6 -> :sswitch_8c
        0x7 -> :sswitch_a0
        0x8 -> :sswitch_b4
        0x9 -> :sswitch_cc
        0xa -> :sswitch_dd
        0xb -> :sswitch_ee
        0xc -> :sswitch_106
        0xd -> :sswitch_11a
        0xe -> :sswitch_12b
        0xf -> :sswitch_13c
        0x10 -> :sswitch_14d
        0x11 -> :sswitch_161
        0x12 -> :sswitch_175
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
