.class public Lcom/ecarx/sdk/policy/StoragePolicyWrapper;
.super Ljava/lang/Object;
.source "StoragePolicyWrapper.java"

# interfaces
.implements Lcom/ecarx/sdk/policy/IStoragePolicy;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adStoragePolicy:Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;)V
    .registers 4
    .param p1, "adaptStoragePolicy"    # Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;->adStoragePolicy:Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;

    .line 15
    sget-object v0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;->TAG:Ljava/lang/String;

    const-string v1, "StoragePolicyWrapper create .. "

    invoke-static {v0, v1}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getVolumeFullPath(I)Ljava/lang/String;
    .registers 3
    .param p1, "volumeType"    # I
        .annotation build Lcom/ecarx/sdk/policy/IStoragePolicy$VolumeType;
        .end annotation
    .end param

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;->adStoragePolicy:Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;->getVolumeFullPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeName(I)Ljava/lang/String;
    .registers 3
    .param p1, "volumeType"    # I
        .annotation build Lcom/ecarx/sdk/policy/IStoragePolicy$VolumeType;
        .end annotation
    .end param

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ecarx/sdk/policy/StoragePolicyWrapper;->adStoragePolicy:Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IStoragePolicy;->getVolumeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
