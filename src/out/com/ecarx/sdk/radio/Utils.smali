.class public Lcom/ecarx/sdk/radio/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/radio/service/IFrequency;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/sdk/radio/FrequencyBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    .local p0, "iFrequencyList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .local v0, "frequencyBeanList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/sdk/radio/FrequencyBean;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecarx/radio/service/IFrequency;

    .line 18
    .local v2, "iFrequency":Lcom/ecarx/radio/service/IFrequency;
    new-instance v3, Lcom/ecarx/sdk/radio/FrequencyBean;

    invoke-virtual {v2}, Lcom/ecarx/radio/service/IFrequency;->getFrequency()I

    move-result v4

    invoke-virtual {v2}, Lcom/ecarx/radio/service/IFrequency;->getBand()I

    move-result v5

    invoke-static {v5}, Lcom/ecarx/sdk/radio/Band;->bandFromId(I)Lcom/ecarx/sdk/radio/Band;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ecarx/radio/service/IFrequency;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/ecarx/sdk/radio/FrequencyBean;-><init>(ILcom/ecarx/sdk/radio/Band;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 20
    .end local v2    # "iFrequency":Lcom/ecarx/radio/service/IFrequency;
    :cond_2e
    return-object v0
.end method
