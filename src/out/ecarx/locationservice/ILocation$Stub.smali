.class public abstract Lecarx/locationservice/ILocation$Stub;
.super Landroid/os/Binder;
.source "ILocation.java"

# interfaces
.implements Lecarx/locationservice/ILocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/locationservice/ILocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/locationservice/ILocation$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.locationservice.ILocation"

.field static final TRANSACTION_getAccuracy:I = 0x3

.field static final TRANSACTION_getAdCode:I = 0xf

.field static final TRANSACTION_getAddress:I = 0x7

.field static final TRANSACTION_getAltitude:I = 0x4

.field static final TRANSACTION_getAoiName:I = 0x11

.field static final TRANSACTION_getBearing:I = 0x6

.field static final TRANSACTION_getCity:I = 0xa

.field static final TRANSACTION_getCityCode:I = 0xe

.field static final TRANSACTION_getCountry:I = 0x8

.field static final TRANSACTION_getDistrict:I = 0xb

.field static final TRANSACTION_getErrorCode:I = 0x16

.field static final TRANSACTION_getErrorInfo:I = 0x15

.field static final TRANSACTION_getGpsAccuracyStatus:I = 0x12

.field static final TRANSACTION_getLatitude:I = 0x1

.field static final TRANSACTION_getLocationDetail:I = 0x14

.field static final TRANSACTION_getLocationType:I = 0x13

.field static final TRANSACTION_getLongitude:I = 0x2

.field static final TRANSACTION_getPoiName:I = 0x10

.field static final TRANSACTION_getProvince:I = 0x9

.field static final TRANSACTION_getSpeed:I = 0x5

.field static final TRANSACTION_getStreet:I = 0xc

.field static final TRANSACTION_getStreetNum:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.locationservice.ILocation"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/locationservice/ILocation;
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
    const-string v1, "ecarx.locationservice.ILocation"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/locationservice/ILocation;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/locationservice/ILocation;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/locationservice/ILocation$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/locationservice/ILocation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 9
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
    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_17e

    .line 222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    .line 42
    :sswitch_9
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 47
    :sswitch_f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getLatitude()D

    move-result-wide v0

    .line 49
    .local v0, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_8

    .line 55
    .end local v0    # "_result":D
    :sswitch_1f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getLongitude()D

    move-result-wide v0

    .line 57
    .restart local v0    # "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_8

    .line 63
    .end local v0    # "_result":D
    :sswitch_2f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getAccuracy()F

    move-result v0

    .line 65
    .local v0, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 71
    .end local v0    # "_result":F
    :sswitch_3f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getAltitude()D

    move-result-wide v0

    .line 73
    .local v0, "_result":D
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_8

    .line 79
    .end local v0    # "_result":D
    :sswitch_4f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getSpeed()F

    move-result v0

    .line 81
    .local v0, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 87
    .end local v0    # "_result":F
    :sswitch_5f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getBearing()F

    move-result v0

    .line 89
    .restart local v0    # "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_8

    .line 95
    .end local v0    # "_result":F
    :sswitch_6f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 103
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_7f
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 105
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 111
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_90
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getProvince()Ljava/lang/String;

    move-result-object v0

    .line 113
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 119
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_a1
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 121
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 127
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_b2
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getDistrict()Ljava/lang/String;

    move-result-object v0

    .line 129
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 135
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_c3
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getStreet()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 143
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_d4
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getStreetNum()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 151
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_e5
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getCityCode()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 159
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_f6
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getAdCode()Ljava/lang/String;

    move-result-object v0

    .line 161
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 167
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_107
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getPoiName()Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 175
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_118
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getAoiName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 183
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_129
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getGpsAccuracyStatus()I

    move-result v0

    .line 185
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 191
    .end local v0    # "_result":I
    :sswitch_13a
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getLocationType()I

    move-result v0

    .line 193
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 199
    .end local v0    # "_result":I
    :sswitch_14b
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getLocationDetail()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 207
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_15c
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getErrorInfo()Ljava/lang/String;

    move-result-object v0

    .line 209
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 215
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_16d
    const-string v3, "ecarx.locationservice.ILocation"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lecarx/locationservice/ILocation$Stub;->getErrorCode()I

    move-result v0

    .line 217
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_8

    .line 38
    :sswitch_data_17e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3f
        0x5 -> :sswitch_4f
        0x6 -> :sswitch_5f
        0x7 -> :sswitch_6f
        0x8 -> :sswitch_7f
        0x9 -> :sswitch_90
        0xa -> :sswitch_a1
        0xb -> :sswitch_b2
        0xc -> :sswitch_c3
        0xd -> :sswitch_d4
        0xe -> :sswitch_e5
        0xf -> :sswitch_f6
        0x10 -> :sswitch_107
        0x11 -> :sswitch_118
        0x12 -> :sswitch_129
        0x13 -> :sswitch_13a
        0x14 -> :sswitch_14b
        0x15 -> :sswitch_15c
        0x16 -> :sswitch_16d
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
