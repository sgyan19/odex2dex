.class public Lcom/ecarx/radio/service/IFrequency;
.super Ljava/lang/Object;
.source "IFrequency.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/ecarx/radio/service/IFrequency;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private band:I

.field private frequency:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/ecarx/radio/service/IFrequency$1;

    invoke-direct {v0}, Lcom/ecarx/radio/service/IFrequency$1;-><init>()V

    sput-object v0, Lcom/ecarx/radio/service/IFrequency;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "frequency"    # I
    .param p2, "band"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    .line 21
    iput p2, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    .line 22
    iput-object p3, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    .line 23
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    .line 65
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getBand()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    return v0
.end method

.method public getFrequency()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBand(I)V
    .registers 2
    .param p1, "band"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    .line 39
    return-void
.end method

.method public setFrequency(I)V
    .registers 2
    .param p1, "frequency"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IFrequency{frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", band="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget v0, p0, Lcom/ecarx/radio/service/IFrequency;->frequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lcom/ecarx/radio/service/IFrequency;->band:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/ecarx/radio/service/IFrequency;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
