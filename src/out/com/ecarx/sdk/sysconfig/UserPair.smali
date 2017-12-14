.class public Lcom/ecarx/sdk/sysconfig/UserPair;
.super Ljava/lang/Object;
.source "UserPair.java"


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ecarx/sdk/sysconfig/UserPair;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iget-object v0, p0, Lcom/ecarx/sdk/sysconfig/UserPair;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ecarx/sdk/sysconfig/UserPair;->password:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/ecarx/sdk/sysconfig/UserPair;->username:Ljava/lang/String;

    .line 14
    return-void
.end method
