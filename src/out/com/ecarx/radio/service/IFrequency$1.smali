.class final Lcom/ecarx/radio/service/IFrequency$1;
.super Ljava/lang/Object;
.source "IFrequency.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/radio/service/IFrequency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/ecarx/radio/service/IFrequency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/radio/service/IFrequency;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 70
    new-instance v0, Lcom/ecarx/radio/service/IFrequency;

    invoke-direct {v0, p1}, Lcom/ecarx/radio/service/IFrequency;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/ecarx/radio/service/IFrequency$1;->createFromParcel(Landroid/os/Parcel;)Lcom/ecarx/radio/service/IFrequency;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/ecarx/radio/service/IFrequency;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcom/ecarx/radio/service/IFrequency;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/ecarx/radio/service/IFrequency$1;->newArray(I)[Lcom/ecarx/radio/service/IFrequency;

    move-result-object v0

    return-object v0
.end method
