.class public interface abstract Lecarx/locationservice/ILocationObserver;
.super Ljava/lang/Object;
.source "ILocationObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lecarx/locationservice/ILocationObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCityChanged(Lecarx/locationservice/ILocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDistrictChanged(Lecarx/locationservice/ILocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onLocation(Lecarx/locationservice/ILocation;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
