.class public interface abstract Lecarx/locationservice/ILocationService;
.super Ljava/lang/Object;
.source "ILocationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/locationservice/ILocationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract attachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract detachLocationObserver(Lecarx/locationservice/ILocationObserver;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastKnownLocation()Lecarx/locationservice/ILocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
