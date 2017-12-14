.class public Lcom/ecarx/sdk/log/SdkLogger;
.super Ljava/lang/Object;
.source "SdkLogger.java"


# static fields
.field private static PRINT_LOG_D:Z = false

.field private static PRINT_LOG_E:Z = false

.field private static PRINT_LOG_I:Z = false

.field private static final TAG:Ljava/lang/String; = "SdkLogger"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_I:Z

    .line 12
    sput-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_D:Z

    .line 13
    sput-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_E:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 28
    sget-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_D:Z

    if-eqz v0, :cond_20

    .line 29
    const-string v0, "SdkLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_20
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_E:Z

    if-eqz v0, :cond_20

    .line 41
    const-string v0, "SdkLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_20
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    sget-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_E:Z

    if-eqz v0, :cond_20

    .line 47
    const-string v0, "SdkLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_20
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 22
    sget-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_I:Z

    if-eqz v0, :cond_20

    .line 23
    const-string v0, "SdkLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_20
    return-void
.end method

.method public static setLogOutputEnable(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .prologue
    .line 16
    sput-boolean p0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_D:Z

    .line 17
    sput-boolean p0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_E:Z

    .line 18
    sput-boolean p0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_I:Z

    .line 19
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 34
    sget-boolean v0, Lcom/ecarx/sdk/log/SdkLogger;->PRINT_LOG_D:Z

    if-eqz v0, :cond_20

    .line 35
    const-string v0, "SdkLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_20
    return-void
.end method
