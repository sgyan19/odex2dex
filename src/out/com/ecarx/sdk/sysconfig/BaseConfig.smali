.class public Lcom/ecarx/sdk/sysconfig/BaseConfig;
.super Ljava/lang/Object;
.source "BaseConfig.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "BaseConfig"

    iput-object v0, p0, Lcom/ecarx/sdk/sysconfig/BaseConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized writeSystemConfigs(Ljava/lang/String;Ljava/util/Map;)V
    .registers 19
    .param p1, "sysFilePath"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    .line 138
    monitor-enter p0

    if-eqz p2, :cond_9

    :try_start_3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b0

    move-result v13

    if-eqz v13, :cond_b

    .line 190
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 141
    :cond_b
    :try_start_b
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_b0

    .line 142
    .local v12, "props":Ljava/util/Properties;
    const/4 v5, 0x0

    .line 143
    .local v5, "ips":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 146
    .local v10, "ops":Ljava/io/OutputStream;
    const/4 v13, 0x0

    :try_start_13
    const-string v14, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "dir":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, "fileDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2f

    .line 149
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 151
    :cond_2f
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3f

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 156
    :cond_3f
    new-instance v6, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_46} :catch_ed
    .catchall {:try_start_13 .. :try_end_46} :catchall_d5

    .line 157
    .end local v5    # "ips":Ljava/io/InputStream;
    .local v6, "ips":Ljava/io/InputStream;
    :try_start_46
    invoke-virtual {v12, v6}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 158
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 159
    .local v9, "keySets":Ljava/util/Set;
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 160
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 161
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 162
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v8, v13}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    const-string v14, "BaseConfig"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[writeSystemConfig][key:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "][value:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "]"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_98} :catch_99
    .catchall {:try_start_46 .. :try_end_98} :catchall_e6

    goto :goto_51

    .line 171
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "keySets":Ljava/util/Set;
    :catch_99
    move-exception v2

    move-object v5, v6

    .line 173
    .end local v1    # "dir":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileDir":Ljava/io/File;
    .end local v6    # "ips":Ljava/io/InputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "ips":Ljava/io/InputStream;
    :goto_9b
    :try_start_9b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_d5

    .line 178
    if-eqz v5, :cond_a3

    .line 179
    :try_start_a0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 181
    :cond_a3
    if-eqz v10, :cond_9

    .line 182
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a8} :catch_aa
    .catchall {:try_start_a0 .. :try_end_a8} :catchall_b0

    goto/16 :goto_9

    .line 184
    :catch_aa
    move-exception v2

    .line 185
    .local v2, "e":Ljava/io/IOException;
    :try_start_ab
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_ab .. :try_end_ae} :catchall_b0

    goto/16 :goto_9

    .line 138
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ips":Ljava/io/InputStream;
    .end local v10    # "ops":Ljava/io/OutputStream;
    .end local v12    # "props":Ljava/util/Properties;
    :catchall_b0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 168
    .restart local v1    # "dir":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileDir":Ljava/io/File;
    .restart local v6    # "ips":Ljava/io/InputStream;
    .restart local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "keySets":Ljava/util/Set;
    .restart local v10    # "ops":Ljava/io/OutputStream;
    .restart local v12    # "props":Ljava/util/Properties;
    :cond_b3
    :try_start_b3
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_ba} :catch_99
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_e6

    .line 169
    .end local v10    # "ops":Ljava/io/OutputStream;
    .local v11, "ops":Ljava/io/OutputStream;
    :try_start_ba
    const-string v13, "system"

    invoke-virtual {v12, v11, v13}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bf} :catch_ef
    .catchall {:try_start_ba .. :try_end_bf} :catchall_e9

    .line 178
    if-eqz v6, :cond_c4

    .line 179
    :try_start_c1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 181
    :cond_c4
    if-eqz v11, :cond_c9

    .line 182
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c9} :catch_cd
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_b0

    :cond_c9
    move-object v10, v11

    .end local v11    # "ops":Ljava/io/OutputStream;
    .restart local v10    # "ops":Ljava/io/OutputStream;
    move-object v5, v6

    .line 186
    .end local v6    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 184
    .end local v5    # "ips":Ljava/io/InputStream;
    .end local v10    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ips":Ljava/io/InputStream;
    .restart local v11    # "ops":Ljava/io/OutputStream;
    :catch_cd
    move-exception v2

    .line 185
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_ce
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d1
    .catchall {:try_start_ce .. :try_end_d1} :catchall_b0

    move-object v10, v11

    .end local v11    # "ops":Ljava/io/OutputStream;
    .restart local v10    # "ops":Ljava/io/OutputStream;
    move-object v5, v6

    .line 188
    .end local v6    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    goto/16 :goto_9

    .line 177
    .end local v1    # "dir":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileDir":Ljava/io/File;
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "keySets":Ljava/util/Set;
    :catchall_d5
    move-exception v13

    .line 178
    :goto_d6
    if-eqz v5, :cond_db

    .line 179
    :try_start_d8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 181
    :cond_db
    if-eqz v10, :cond_e0

    .line 182
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e0} :catch_e1
    .catchall {:try_start_d8 .. :try_end_e0} :catchall_b0

    .line 186
    :cond_e0
    :goto_e0
    :try_start_e0
    throw v13

    .line 184
    :catch_e1
    move-exception v2

    .line 185
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_b0

    goto :goto_e0

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v1    # "dir":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileDir":Ljava/io/File;
    .restart local v6    # "ips":Ljava/io/InputStream;
    :catchall_e6
    move-exception v13

    move-object v5, v6

    .end local v6    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    goto :goto_d6

    .end local v5    # "ips":Ljava/io/InputStream;
    .end local v10    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ips":Ljava/io/InputStream;
    .restart local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "keySets":Ljava/util/Set;
    .restart local v11    # "ops":Ljava/io/OutputStream;
    :catchall_e9
    move-exception v13

    move-object v10, v11

    .end local v11    # "ops":Ljava/io/OutputStream;
    .restart local v10    # "ops":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    goto :goto_d6

    .line 171
    .end local v1    # "dir":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileDir":Ljava/io/File;
    .end local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v9    # "keySets":Ljava/util/Set;
    :catch_ed
    move-exception v2

    goto :goto_9b

    .end local v5    # "ips":Ljava/io/InputStream;
    .end local v10    # "ops":Ljava/io/OutputStream;
    .restart local v1    # "dir":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileDir":Ljava/io/File;
    .restart local v6    # "ips":Ljava/io/InputStream;
    .restart local v7    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v9    # "keySets":Ljava/util/Set;
    .restart local v11    # "ops":Ljava/io/OutputStream;
    :catch_ef
    move-exception v2

    move-object v10, v11

    .end local v11    # "ops":Ljava/io/OutputStream;
    .restart local v10    # "ops":Ljava/io/OutputStream;
    move-object v5, v6

    .end local v6    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    goto :goto_9b
.end method


# virtual methods
.method protected declared-synchronized readAllAccounts()Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecarx/sdk/sysconfig/UserPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9c

    .line 197
    .local v6, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 200
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_7
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v8, "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    new-instance v2, Ljava/io/FileInputStream;

    const-string v9, "/private/sys_account"

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_b3
    .catchall {:try_start_7 .. :try_end_13} :catchall_a4

    .line 202
    .end local v1    # "ips":Ljava/io/InputStream;
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_13
    invoke-virtual {v6, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 203
    invoke-virtual {v6}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 204
    .local v5, "keys":Ljava/util/Set;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 205
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 206
    .local v7, "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_90

    .line 207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 208
    .local v4, "key":Ljava/lang/String;
    new-instance v7, Lcom/ecarx/sdk/sysconfig/UserPair;

    .end local v7    # "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    invoke-direct {v7}, Lcom/ecarx/sdk/sysconfig/UserPair;-><init>()V

    .line 209
    .restart local v7    # "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    invoke-virtual {v7, v4}, Lcom/ecarx/sdk/sysconfig/UserPair;->setUsername(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/ecarx/sdk/sysconfig/UserPair;->setPassword(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    const-string v9, "BaseConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[readSystemAllConfig][key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/ecarx/sdk/sysconfig/UserPair;->getPassword()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_69} :catch_6a
    .catchall {:try_start_13 .. :try_end_69} :catchall_b0

    goto :goto_1f

    .line 217
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Set;
    .end local v7    # "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    :catch_6a
    move-exception v0

    move-object v1, v2

    .line 218
    .end local v2    # "ips":Ljava/io/InputStream;
    .end local v8    # "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :goto_6c
    :try_start_6c
    const-string v9, "BaseConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " >>>>>>>>>>>>>>>>>>>>>read failded! error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_6c .. :try_end_88} :catchall_a4

    .line 219
    const/4 v8, 0x0

    .line 224
    if-eqz v1, :cond_8e

    .line 225
    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_9f
    .catchall {:try_start_8b .. :try_end_8e} :catchall_9c

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8e
    :goto_8e
    monitor-exit p0

    return-object v8

    .line 224
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keys":Ljava/util/Set;
    .restart local v7    # "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    .restart local v8    # "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    :cond_90
    if-eqz v2, :cond_95

    .line 225
    :try_start_92
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_97
    .catchall {:try_start_92 .. :try_end_95} :catchall_9c

    :cond_95
    :goto_95
    move-object v1, v2

    .line 229
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_8e

    .line 227
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catch_97
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_95

    .line 196
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ips":Ljava/io/InputStream;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/util/Set;
    .end local v6    # "props":Ljava/util/Properties;
    .end local v7    # "userPair":Lcom/ecarx/sdk/sysconfig/UserPair;
    .end local v8    # "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    :catchall_9c
    move-exception v9

    monitor-exit p0

    throw v9

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "ips":Ljava/io/InputStream;
    .restart local v6    # "props":Ljava/util/Properties;
    :catch_9f
    move-exception v0

    .line 228
    .local v0, "e":Ljava/io/IOException;
    :try_start_a0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a3
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_9c

    goto :goto_8e

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_a4
    move-exception v9

    .line 224
    :goto_a5
    if-eqz v1, :cond_aa

    .line 225
    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_9c

    .line 229
    :cond_aa
    :goto_aa
    :try_start_aa
    throw v9

    .line 227
    :catch_ab
    move-exception v0

    .line 228
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_9c

    goto :goto_aa

    .line 223
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    .restart local v8    # "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    :catchall_b0
    move-exception v9

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_a5

    .line 217
    .end local v8    # "userPairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/ecarx/sdk/sysconfig/UserPair;>;"
    :catch_b3
    move-exception v0

    goto :goto_6c
.end method

.method protected readSystemConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v0, "/private/sys_config"

    invoke-virtual {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized readSystemConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "sysFilePath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_48

    .line 97
    .local v3, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 100
    .local v1, "ips":Ljava/io/InputStream;
    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_4b
    .catchall {:try_start_7 .. :try_end_c} :catchall_74

    .line 101
    .end local v1    # "ips":Ljava/io/InputStream;
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_c
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 102
    invoke-virtual {v3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "value":Ljava/lang/String;
    const-string v5, "BaseConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[readSystemConfig][key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3b} :catch_83
    .catchall {:try_start_c .. :try_end_3b} :catchall_80

    .line 112
    if-eqz v2, :cond_40

    .line 113
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_43
    .catchall {:try_start_3d .. :try_end_40} :catchall_48

    :cond_40
    :goto_40
    move-object v1, v2

    .line 117
    .end local v2    # "ips":Ljava/io/InputStream;
    .end local v4    # "value":Ljava/lang/String;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :cond_41
    :goto_41
    monitor-exit p0

    return-object v4

    .line 115
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    .restart local v4    # "value":Ljava/lang/String;
    :catch_43
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    :try_start_44
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_48

    goto :goto_40

    .line 96
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ips":Ljava/io/InputStream;
    .end local v3    # "props":Ljava/util/Properties;
    .end local v4    # "value":Ljava/lang/String;
    :catchall_48
    move-exception v5

    monitor-exit p0

    throw v5

    .line 105
    .restart local v1    # "ips":Ljava/io/InputStream;
    .restart local v3    # "props":Ljava/util/Properties;
    :catch_4b
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    :goto_4c
    :try_start_4c
    const-string v5, "BaseConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " >>>>>>>>>>>>>>>>>>>>>read failded! error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_74

    .line 107
    const/4 v4, 0x0

    .line 112
    if-eqz v1, :cond_41

    .line 113
    :try_start_6b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f
    .catchall {:try_start_6b .. :try_end_6e} :catchall_48

    goto :goto_41

    .line 115
    :catch_6f
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    :try_start_70
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_48

    goto :goto_41

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_74
    move-exception v5

    .line 112
    :goto_75
    if-eqz v1, :cond_7a

    .line 113
    :try_start_77
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b
    .catchall {:try_start_77 .. :try_end_7a} :catchall_48

    .line 117
    :cond_7a
    :goto_7a
    :try_start_7a
    throw v5

    .line 115
    :catch_7b
    move-exception v0

    .line 116
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7a .. :try_end_7f} :catchall_48

    goto :goto_7a

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catchall_80
    move-exception v5

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_75

    .line 105
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catch_83
    move-exception v0

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_4c
.end method

.method protected declared-synchronized removeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "sysFilePath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_79

    .line 237
    .local v5, "props":Ljava/util/Properties;
    const/4 v1, 0x0

    .line 238
    .local v1, "ips":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 240
    .local v3, "ops":Ljava/io/FileOutputStream;
    :try_start_8
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_4d
    .catchall {:try_start_8 .. :try_end_d} :catchall_72

    .line 241
    .end local v1    # "ips":Ljava/io/InputStream;
    .local v2, "ips":Ljava/io/InputStream;
    :try_start_d
    invoke-virtual {v5, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 242
    invoke-virtual {v5, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 243
    invoke-virtual {v5, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_85
    .catchall {:try_start_d .. :try_end_1e} :catchall_7e

    .line 245
    .end local v3    # "ops":Ljava/io/FileOutputStream;
    .local v4, "ops":Ljava/io/FileOutputStream;
    :try_start_1e
    const-string v6, "system"

    invoke-virtual {v5, v4, v6}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 246
    const-string v6, "BaseConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[removeSystemConfig][key:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_41} :catch_88
    .catchall {:try_start_1e .. :try_end_41} :catchall_81

    move-object v3, v4

    .line 254
    .end local v4    # "ops":Ljava/io/FileOutputStream;
    .restart local v3    # "ops":Ljava/io/FileOutputStream;
    :cond_42
    if-eqz v2, :cond_47

    .line 255
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_4a
    .catchall {:try_start_44 .. :try_end_47} :catchall_79

    :cond_47
    move-object v1, v2

    .line 262
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    :cond_48
    :goto_48
    monitor-exit p0

    return-void

    .line 257
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catch_4a
    move-exception v6

    move-object v1, v2

    .line 260
    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_48

    .line 248
    :catch_4d
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    :goto_4e
    :try_start_4e
    const-string v6, "BaseConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " >>>>>>>>>>>>>>>>>>>>>read failded! error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ecarx/sdk/log/SdkLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_72

    .line 254
    if-eqz v1, :cond_48

    .line 255
    :try_start_6c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_70
    .catchall {:try_start_6c .. :try_end_6f} :catchall_79

    goto :goto_48

    .line 257
    :catch_70
    move-exception v6

    goto :goto_48

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_72
    move-exception v6

    .line 254
    :goto_73
    if-eqz v1, :cond_78

    .line 255
    :try_start_75
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_7c
    .catchall {:try_start_75 .. :try_end_78} :catchall_79

    .line 258
    :cond_78
    :goto_78
    :try_start_78
    throw v6
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_79

    .line 236
    .end local v1    # "ips":Ljava/io/InputStream;
    .end local v3    # "ops":Ljava/io/FileOutputStream;
    .end local v5    # "props":Ljava/util/Properties;
    :catchall_79
    move-exception v6

    monitor-exit p0

    throw v6

    .line 257
    .restart local v1    # "ips":Ljava/io/InputStream;
    .restart local v3    # "ops":Ljava/io/FileOutputStream;
    .restart local v5    # "props":Ljava/util/Properties;
    :catch_7c
    move-exception v7

    goto :goto_78

    .line 253
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catchall_7e
    move-exception v6

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_73

    .end local v1    # "ips":Ljava/io/InputStream;
    .end local v3    # "ops":Ljava/io/FileOutputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ops":Ljava/io/FileOutputStream;
    :catchall_81
    move-exception v6

    move-object v3, v4

    .end local v4    # "ops":Ljava/io/FileOutputStream;
    .restart local v3    # "ops":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_73

    .line 248
    .end local v1    # "ips":Ljava/io/InputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    :catch_85
    move-exception v0

    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_4e

    .end local v1    # "ips":Ljava/io/InputStream;
    .end local v3    # "ops":Ljava/io/FileOutputStream;
    .restart local v2    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ops":Ljava/io/FileOutputStream;
    :catch_88
    move-exception v0

    move-object v3, v4

    .end local v4    # "ops":Ljava/io/FileOutputStream;
    .restart local v3    # "ops":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "ips":Ljava/io/InputStream;
    .restart local v1    # "ips":Ljava/io/InputStream;
    goto :goto_4e
.end method

.method protected writeSystemConfig(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string v0, "/private/sys_config"

    invoke-virtual {p0, v0, p1, p2}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method protected declared-synchronized writeSystemConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "sysFilePath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    new-instance v8, Ljava/util/Properties;

    invoke-direct {v8}, Ljava/util/Properties;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_a1

    .line 41
    .local v8, "props":Ljava/util/Properties;
    const/4 v4, 0x0

    .line 42
    .local v4, "ips":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 45
    .local v6, "ops":Ljava/io/OutputStream;
    const/4 v9, 0x0

    :try_start_9
    const-string v10, "/"

    invoke-virtual {p1, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "dir":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "fileDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_21

    .line 48
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 50
    :cond_21
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3b

    .line 52
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 53
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/File;->setReadable(Z)Z

    .line 54
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/File;->setWritable(Z)Z

    .line 55
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/File;->setExecutable(Z)Z

    .line 58
    :cond_3b
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_40} :catch_8d
    .catchall {:try_start_9 .. :try_end_40} :catchall_a4

    .line 59
    .end local v4    # "ips":Ljava/io/InputStream;
    .local v5, "ips":Ljava/io/InputStream;
    :try_start_40
    invoke-virtual {v8, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 60
    invoke-virtual {v8, p2, p3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_4b} :catch_bc
    .catchall {:try_start_40 .. :try_end_4b} :catchall_b5

    .line 63
    .end local v6    # "ops":Ljava/io/OutputStream;
    .local v7, "ops":Ljava/io/OutputStream;
    :try_start_4b
    const-string v9, "system"

    invoke-virtual {v8, v7, v9}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 64
    const-string v9, "BaseConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[writeSystemConfig][key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "][value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ecarx/sdk/log/SdkLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_78} :catch_bf
    .catchall {:try_start_4b .. :try_end_78} :catchall_b8

    .line 72
    if-eqz v5, :cond_7d

    .line 73
    :try_start_7a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 75
    :cond_7d
    if-eqz v7, :cond_82

    .line 76
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_86
    .catchall {:try_start_7a .. :try_end_82} :catchall_a1

    :cond_82
    move-object v6, v7

    .end local v7    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ops":Ljava/io/OutputStream;
    move-object v4, v5

    .line 84
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileDir":Ljava/io/File;
    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    :cond_84
    :goto_84
    monitor-exit p0

    return-void

    .line 78
    .end local v4    # "ips":Ljava/io/InputStream;
    .end local v6    # "ops":Ljava/io/OutputStream;
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileDir":Ljava/io/File;
    .restart local v5    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ops":Ljava/io/OutputStream;
    :catch_86
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    :try_start_87
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_a1

    move-object v6, v7

    .end local v7    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ops":Ljava/io/OutputStream;
    move-object v4, v5

    .line 82
    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    goto :goto_84

    .line 65
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileDir":Ljava/io/File;
    :catch_8d
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/Exception;
    :goto_8e
    :try_start_8e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_a4

    .line 72
    if-eqz v4, :cond_96

    .line 73
    :try_start_93
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 75
    :cond_96
    if-eqz v6, :cond_84

    .line 76
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_9b} :catch_9c
    .catchall {:try_start_93 .. :try_end_9b} :catchall_a1

    goto :goto_84

    .line 78
    :catch_9c
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    :try_start_9d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a1

    goto :goto_84

    .line 40
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ips":Ljava/io/InputStream;
    .end local v6    # "ops":Ljava/io/OutputStream;
    .end local v8    # "props":Ljava/util/Properties;
    :catchall_a1
    move-exception v9

    monitor-exit p0

    throw v9

    .line 71
    .restart local v4    # "ips":Ljava/io/InputStream;
    .restart local v6    # "ops":Ljava/io/OutputStream;
    .restart local v8    # "props":Ljava/util/Properties;
    :catchall_a4
    move-exception v9

    .line 72
    :goto_a5
    if-eqz v4, :cond_aa

    .line 73
    :try_start_a7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 75
    :cond_aa
    if-eqz v6, :cond_af

    .line 76
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_af} :catch_b0
    .catchall {:try_start_a7 .. :try_end_af} :catchall_a1

    .line 80
    :cond_af
    :goto_af
    :try_start_af
    throw v9

    .line 78
    :catch_b0
    move-exception v1

    .line 79
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b4
    .catchall {:try_start_af .. :try_end_b4} :catchall_a1

    goto :goto_af

    .line 71
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ips":Ljava/io/InputStream;
    .restart local v0    # "dir":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "fileDir":Ljava/io/File;
    .restart local v5    # "ips":Ljava/io/InputStream;
    :catchall_b5
    move-exception v9

    move-object v4, v5

    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    goto :goto_a5

    .end local v4    # "ips":Ljava/io/InputStream;
    .end local v6    # "ops":Ljava/io/OutputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ops":Ljava/io/OutputStream;
    :catchall_b8
    move-exception v9

    move-object v6, v7

    .end local v7    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ops":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    goto :goto_a5

    .line 65
    .end local v4    # "ips":Ljava/io/InputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    :catch_bc
    move-exception v1

    move-object v4, v5

    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    goto :goto_8e

    .end local v4    # "ips":Ljava/io/InputStream;
    .end local v6    # "ops":Ljava/io/OutputStream;
    .restart local v5    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ops":Ljava/io/OutputStream;
    :catch_bf
    move-exception v1

    move-object v6, v7

    .end local v7    # "ops":Ljava/io/OutputStream;
    .restart local v6    # "ops":Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5    # "ips":Ljava/io/InputStream;
    .restart local v4    # "ips":Ljava/io/InputStream;
    goto :goto_8e
.end method

.method protected writeSystemConfigs(Ljava/util/Map;)V
    .registers 3
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    .line 129
    const-string v0, "/private/sys_account"

    invoke-direct {p0, v0, p1}, Lcom/ecarx/sdk/sysconfig/BaseConfig;->writeSystemConfigs(Ljava/lang/String;Ljava/util/Map;)V

    .line 130
    return-void
.end method
