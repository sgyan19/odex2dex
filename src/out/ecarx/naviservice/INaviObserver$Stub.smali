.class public abstract Lecarx/naviservice/INaviObserver$Stub;
.super Landroid/os/Binder;
.source "INaviObserver.java"

# interfaces
.implements Lecarx/naviservice/INaviObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/naviservice/INaviObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/naviservice/INaviObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.naviservice.INaviObserver"

.field static final TRANSACTION_guideInfoChange:I = 0x1

.field static final TRANSACTION_naviStateChange:I = 0x2

.field static final TRANSACTION_onLocationRoadInfo:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.naviservice.INaviObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/naviservice/INaviObserver;
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
    const-string v1, "ecarx.naviservice.INaviObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/naviservice/INaviObserver;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/naviservice/INaviObserver;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/naviservice/INaviObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/naviservice/INaviObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 39
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
    .line 38
    sparse-switch p1, :sswitch_data_ce

    .line 131
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_7
    return v1

    .line 42
    :sswitch_8
    const-string v1, "ecarx.naviservice.INaviObserver"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    goto :goto_7

    .line 47
    :sswitch_11
    const-string v1, "ecarx.naviservice.INaviObserver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 51
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 57
    .local v5, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 59
    .local v6, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 61
    .local v7, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 63
    .local v8, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 65
    .local v9, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 67
    .local v10, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 69
    .local v11, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 71
    .local v12, "_arg10":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 73
    .local v13, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 75
    .local v14, "_arg12":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 77
    .local v15, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 79
    .local v16, "_arg14":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 81
    .local v17, "_arg15":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 83
    .local v19, "_arg16":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 85
    .local v21, "_arg17":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 87
    .local v22, "_arg18":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 89
    .local v23, "_arg19":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 91
    .local v24, "_arg20":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 93
    .local v25, "_arg21":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 95
    .local v26, "_arg22":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 97
    .local v27, "_arg23":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 99
    .local v28, "_arg24":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 101
    .local v29, "_arg25":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .line 103
    .local v30, "_arg26":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 105
    .local v31, "_arg27":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 107
    .local v32, "_arg28":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9f

    const/16 v33, 0x1

    .local v33, "_arg29":Z
    :goto_94
    move-object/from16 v1, p0

    .line 108
    invoke-virtual/range {v1 .. v33}, Lecarx/naviservice/INaviObserver$Stub;->guideInfoChange(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 107
    .end local v33    # "_arg29":Z
    :cond_9f
    const/16 v33, 0x0

    goto :goto_94

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_arg4":I
    .end local v7    # "_arg5":I
    .end local v8    # "_arg6":I
    .end local v9    # "_arg7":I
    .end local v10    # "_arg8":I
    .end local v11    # "_arg9":I
    .end local v12    # "_arg10":I
    .end local v13    # "_arg11":I
    .end local v14    # "_arg12":I
    .end local v15    # "_arg13":I
    .end local v16    # "_arg14":I
    .end local v17    # "_arg15":D
    .end local v19    # "_arg16":D
    .end local v21    # "_arg17":I
    .end local v22    # "_arg18":I
    .end local v23    # "_arg19":I
    .end local v24    # "_arg20":I
    .end local v25    # "_arg21":I
    .end local v26    # "_arg22":I
    .end local v27    # "_arg23":I
    .end local v28    # "_arg24":I
    .end local v29    # "_arg25":I
    .end local v30    # "_arg26":I
    .end local v31    # "_arg27":Ljava/lang/String;
    .end local v32    # "_arg28":I
    :sswitch_a2
    const-string v1, "ecarx.naviservice.INaviObserver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lecarx/naviservice/INaviObserver$Stub;->naviStateChange(I)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 123
    .end local v2    # "_arg0":I
    :sswitch_b8
    const-string v1, "ecarx.naviservice.INaviObserver"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lecarx/naviservice/INaviObserver$Stub;->onLocationRoadInfo(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v1, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_a2
        0x3 -> :sswitch_b8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
