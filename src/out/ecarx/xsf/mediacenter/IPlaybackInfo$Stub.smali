.class public abstract Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;
.super Landroid/os/Binder;
.source "IPlaybackInfo.java"

# interfaces
.implements Lecarx/xsf/mediacenter/IPlaybackInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/xsf/mediacenter/IPlaybackInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/xsf/mediacenter/IPlaybackInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.xsf.mediacenter.IPlaybackInfo"

.field static final TRANSACTION_getArtist:I = 0x3

.field static final TRANSACTION_getArtwork:I = 0xb

.field static final TRANSACTION_getCurrMusicImage:I = 0xf

.field static final TRANSACTION_getCurrMusicMediumImage:I = 0x10

.field static final TRANSACTION_getDuration:I = 0x4

.field static final TRANSACTION_getLaunchIntent:I = 0x1

.field static final TRANSACTION_getLyric:I = 0x9

.field static final TRANSACTION_getLyricContent:I = 0x8

.field static final TRANSACTION_getMediaType:I = 0x6

.field static final TRANSACTION_getNextArtwork:I = 0xc

.field static final TRANSACTION_getNextMusicImage:I = 0x11

.field static final TRANSACTION_getNextMusicMediumImage:I = 0x12

.field static final TRANSACTION_getPlayType:I = 0x18

.field static final TRANSACTION_getPlaybackStatus:I = 0x7

.field static final TRANSACTION_getPreMusicImage:I = 0xd

.field static final TRANSACTION_getPreMusicMediumImage:I = 0xe

.field static final TRANSACTION_getPreviousArtwork:I = 0xa

.field static final TRANSACTION_getProgress:I = 0x5

.field static final TRANSACTION_getRadioFrequency:I = 0x14

.field static final TRANSACTION_getRadioMoreFrequency:I = 0x17

.field static final TRANSACTION_getRadioPlayState:I = 0x16

.field static final TRANSACTION_getRadioType:I = 0x13

.field static final TRANSACTION_getRadioUIName:I = 0x15

.field static final TRANSACTION_getTitle:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/xsf/mediacenter/IPlaybackInfo;
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
    const-string v1, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/xsf/mediacenter/IPlaybackInfo;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/xsf/mediacenter/IPlaybackInfo;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1d2

    .line 268
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getLaunchIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 49
    .local v0, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v0, :cond_25

    .line 51
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    invoke-virtual {v0, p3, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    .line 55
    :cond_25
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 61
    .end local v0    # "_result":Landroid/app/PendingIntent;
    :sswitch_29
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 69
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 71
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 77
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_49
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getDuration()J

    move-result-wide v0

    .line 79
    .local v0, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 85
    .end local v0    # "_result":J
    :sswitch_59
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getProgress()J

    move-result-wide v0

    .line 87
    .restart local v0    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9

    .line 93
    .end local v0    # "_result":J
    :sswitch_69
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getMediaType()I

    move-result v0

    .line 95
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 101
    .end local v0    # "_result":I
    :sswitch_79
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getPlaybackStatus()I

    move-result v0

    .line 103
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 109
    .end local v0    # "_result":I
    :sswitch_89
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getLyricContent()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 117
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_9a
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getLyric()Landroid/net/Uri;

    move-result-object v0

    .line 119
    .local v0, "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v0, :cond_b0

    .line 121
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {v0, p3, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 125
    :cond_b0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 131
    .end local v0    # "_result":Landroid/net/Uri;
    :sswitch_b5
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getPreviousArtwork()Landroid/net/Uri;

    move-result-object v0

    .line 133
    .restart local v0    # "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v0, :cond_cb

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v0, p3, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 139
    :cond_cb
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 145
    .end local v0    # "_result":Landroid/net/Uri;
    :sswitch_d0
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getArtwork()Landroid/net/Uri;

    move-result-object v0

    .line 147
    .restart local v0    # "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v0, :cond_e6

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    invoke-virtual {v0, p3, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 153
    :cond_e6
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 159
    .end local v0    # "_result":Landroid/net/Uri;
    :sswitch_eb
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getNextArtwork()Landroid/net/Uri;

    move-result-object v0

    .line 161
    .restart local v0    # "_result":Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v0, :cond_101

    .line 163
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    invoke-virtual {v0, p3, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 167
    :cond_101
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 173
    .end local v0    # "_result":Landroid/net/Uri;
    :sswitch_106
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getPreMusicImage()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 181
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_117
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getPreMusicMediumImage()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 189
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_128
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getCurrMusicImage()Ljava/lang/String;

    move-result-object v0

    .line 191
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 197
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_139
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getCurrMusicMediumImage()Ljava/lang/String;

    move-result-object v0

    .line 199
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 205
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_14a
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getNextMusicImage()Ljava/lang/String;

    move-result-object v0

    .line 207
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 213
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_15b
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getNextMusicMediumImage()Ljava/lang/String;

    move-result-object v0

    .line 215
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 221
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_16c
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getRadioType()Ljava/lang/String;

    move-result-object v0

    .line 223
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 229
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_17d
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getRadioFrequency()Ljava/lang/String;

    move-result-object v0

    .line 231
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 237
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_18e
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getRadioUIName()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 245
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_19f
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getRadioPlayState()I

    move-result v0

    .line 247
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 253
    .end local v0    # "_result":I
    :sswitch_1b0
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getRadioMoreFrequency()Ljava/util/List;

    move-result-object v2

    .line 255
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_9

    .line 261
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_1c1
    const-string v4, "ecarx.xsf.mediacenter.IPlaybackInfo"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lecarx/xsf/mediacenter/IPlaybackInfo$Stub;->getPlayType()I

    move-result v0

    .line 263
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_29
        0x3 -> :sswitch_39
        0x4 -> :sswitch_49
        0x5 -> :sswitch_59
        0x6 -> :sswitch_69
        0x7 -> :sswitch_79
        0x8 -> :sswitch_89
        0x9 -> :sswitch_9a
        0xa -> :sswitch_b5
        0xb -> :sswitch_d0
        0xc -> :sswitch_eb
        0xd -> :sswitch_106
        0xe -> :sswitch_117
        0xf -> :sswitch_128
        0x10 -> :sswitch_139
        0x11 -> :sswitch_14a
        0x12 -> :sswitch_15b
        0x13 -> :sswitch_16c
        0x14 -> :sswitch_17d
        0x15 -> :sswitch_18e
        0x16 -> :sswitch_19f
        0x17 -> :sswitch_1b0
        0x18 -> :sswitch_1c1
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
