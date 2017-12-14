.class public Lcom/ecarx/sdk/tools/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "implicitIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 73
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, p1, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 76
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_14

    .line 77
    :cond_12
    const/4 v2, 0x0

    .line 92
    :goto_13
    return-object v2

    .line 81
    :cond_14
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 82
    .local v6, "serviceInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 83
    .local v3, "packageName":Ljava/lang/String;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 84
    .local v0, "className":Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .local v1, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    .local v2, "explicitIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_13
.end method

.method public static string2boolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 45
    move v1, p1

    .line 46
    .local v1, "value":Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 48
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_12} :catch_14

    move-result v1

    .line 54
    :cond_13
    :goto_13
    return v1

    .line 49
    :catch_14
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    move v1, p1

    goto :goto_13
.end method

.method public static string2double(Ljava/lang/String;D)D
    .registers 7
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # D

    .prologue
    .line 32
    move-wide v1, p1

    .line 33
    .local v1, "value":D
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 35
    :try_start_7
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result-wide v1

    .line 41
    :cond_f
    :goto_f
    return-wide v1

    .line 36
    :catch_10
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    move-wide v1, p1

    goto :goto_f
.end method

.method public static string2int(Ljava/lang/String;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 19
    move v1, p1

    .line 20
    .local v1, "value":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 22
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result v1

    .line 28
    :cond_f
    :goto_f
    return v1

    .line 23
    :catch_10
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    move v1, p1

    goto :goto_f
.end method
