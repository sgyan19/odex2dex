.class public abstract Lecarx/locationservice/ILocationService$Stub;
.super Landroid/os/Binder;
.source "ILocationService.java"

# interfaces
.implements Lecarx/locationservice/ILocationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/locationservice/ILocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/locationservice/ILocationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "ecarx.locationservice.ILocationService"

.field static final TRANSACTION_attachLocationObserver:I = 0x2

.field static final TRANSACTION_detachLocationObserver:I = 0x3

.field static final TRANSACTION_getLastKnownLocation:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "ecarx.locationservice.ILocationService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lecarx/locationservice/ILocationService;
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
    const-string v1, "ecarx.locationservice.ILocationService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lecarx/locationservice/ILocationService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lecarx/locationservice/ILocationService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lecarx/locationservice/ILocationService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lecarx/locationservice/ILocationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 10
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
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_5e

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_9
    return v3

    .line 42
    :sswitch_a
    const-string v2, "ecarx.locationservice.ILocationService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v2, "ecarx.locationservice.ILocationService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lecarx/locationservice/ILocationService$Stub;->getLastKnownLocation()Lecarx/locationservice/ILocation;

    move-result-object v1

    .line 49
    .local v1, "_result":Lecarx/locationservice/ILocation;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v1, :cond_26

    invoke-interface {v1}, Lecarx/locationservice/ILocation;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_22
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :cond_26
    const/4 v2, 0x0

    goto :goto_22

    .line 55
    .end local v1    # "_result":Lecarx/locationservice/ILocation;
    :sswitch_28
    const-string v4, "ecarx.locationservice.ILocationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lecarx/locationservice/ILocationObserver$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/locationservice/ILocationObserver;

    move-result-object v0

    .line 58
    .local v0, "_arg0":Lecarx/locationservice/ILocationObserver;
    invoke-virtual {p0, v0}, Lecarx/locationservice/ILocationService$Stub;->attachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z

    move-result v1

    .line 59
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v1, :cond_3f

    move v2, v3

    :cond_3f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 65
    .end local v0    # "_arg0":Lecarx/locationservice/ILocationObserver;
    .end local v1    # "_result":Z
    :sswitch_43
    const-string v4, "ecarx.locationservice.ILocationService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lecarx/locationservice/ILocationObserver$Stub;->asInterface(Landroid/os/IBinder;)Lecarx/locationservice/ILocationObserver;

    move-result-object v0

    .line 68
    .restart local v0    # "_arg0":Lecarx/locationservice/ILocationObserver;
    invoke-virtual {p0, v0}, Lecarx/locationservice/ILocationService$Stub;->detachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z

    move-result v1

    .line 69
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    if-eqz v1, :cond_5a

    move v2, v3

    :cond_5a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 38
    :sswitch_data_5e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_43
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
