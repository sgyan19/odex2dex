.class Lcom/ecarx/sdk/radio/RadioServerImpl$2;
.super Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;
.source "RadioServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecarx/sdk/radio/RadioServerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;


# direct methods
.method constructor <init>(Lcom/ecarx/sdk/radio/RadioServerImpl;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    invoke-direct {p0}, Lcom/ecarx/radio/service/IRadioSvcCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioPolicyChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioPolicyChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 222
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_43

    .line 223
    :try_start_26
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 224
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onAudioPolicyChanged(I)V

    goto :goto_30

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_40
    move-exception v2

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    :try_start_42
    throw v2

    .line 227
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw v2

    .line 226
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_46
    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_40

    .line 227
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_43

    .line 228
    return-void
.end method

.method public onCarouselStart(Z)V
    .registers 7
    .param p1, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarouselStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 152
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 153
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onCarouselStart(Z)V

    goto :goto_29

    .line 155
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 156
    return-void
.end method

.method public onCarouserSeek(IJ)V
    .registers 9
    .param p1, "frequency"    # I
    .param p2, "leftTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarouserSeek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 174
    :try_start_29
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_4d

    .line 175
    :try_start_30
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 176
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1, p2, p3}, Lcom/ecarx/sdk/radio/RadioCallback;->onCarouserSeek(IJ)V

    goto :goto_3a

    .line 178
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_4a
    move-exception v2

    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2

    .line 179
    :catchall_4d
    move-exception v2

    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_4d

    throw v2

    .line 178
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_50
    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4a

    .line 179
    :try_start_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4d

    .line 180
    return-void
.end method

.method public onCarouserStop(I)V
    .registers 7
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCarouserStop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 162
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_43

    .line 163
    :try_start_26
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 164
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onCarouserStop(I)V

    goto :goto_30

    .line 166
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_40
    move-exception v2

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_40

    :try_start_42
    throw v2

    .line 167
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw v2

    .line 166
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_46
    :try_start_46
    monitor-exit v4
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_40

    .line 167
    :try_start_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_43

    .line 168
    return-void
.end method

.method public onCityChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/radio/service/IFrequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "frequencyList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCityChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 186
    :try_start_23
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4b

    .line 187
    :try_start_2a
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 188
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onCityChanged(Ljava/util/List;)V

    goto :goto_34

    .line 190
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_48
    move-exception v2

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2

    .line 191
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v2

    .line 190
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_48

    .line 191
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4b

    .line 192
    return-void
.end method

.method public onCurrentBand(I)V
    .registers 7
    .param p1, "band"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCurrentBand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 72
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 73
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/Band;->bandFromId(I)Lcom/ecarx/sdk/radio/Band;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onCurrentBand(Lcom/ecarx/sdk/radio/Band;)V

    goto :goto_29

    .line 75
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    .line 76
    return-void
.end method

.method public onCurrentFrequency(I)V
    .registers 7
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCurrentFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 82
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 83
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onCurrentFrequency(I)V

    goto :goto_29

    .line 85
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 86
    return-void
.end method

.method public onFavouriteChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/radio/service/IFrequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "frequencyList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFavouriteChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 198
    :try_start_23
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4b

    .line 199
    :try_start_2a
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 200
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onFavouriteChanged(Ljava/util/List;)V

    goto :goto_34

    .line 202
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_48
    move-exception v2

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2

    .line 203
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v2

    .line 202
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_48

    .line 203
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4b

    .line 204
    return-void
.end method

.method public onOpenRadioResult(Z)V
    .registers 7
    .param p1, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOpenRadioResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 52
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 53
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onOpenRadioResult(Z)V

    goto :goto_29

    .line 55
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 56
    return-void
.end method

.method public onPlayListChanged(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ecarx/radio/service/IFrequency;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "frequencyList":Ljava/util/List;, "Ljava/util/List<Lcom/ecarx/radio/service/IFrequency;>;"
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayListChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 210
    :try_start_23
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v4

    monitor-enter v4
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_4b

    .line 211
    :try_start_2a
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 212
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/Utils;->iFrequencyList2FrequencyBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onPlayListChanged(Ljava/util/List;)V

    goto :goto_34

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_48
    move-exception v2

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_2a .. :try_end_4a} :catchall_48

    :try_start_4a
    throw v2

    .line 215
    :catchall_4b
    move-exception v2

    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v2

    .line 214
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_4e
    :try_start_4e
    monitor-exit v4
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_48

    .line 215
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4b

    .line 216
    return-void
.end method

.method public onQualityChanged(Z)V
    .registers 7
    .param p1, "quality"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStationQualityChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 142
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 143
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onStationChanged(Z)V

    goto :goto_29

    .line 145
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 146
    return-void
.end method

.method public onRadioClosed(Z)V
    .registers 7
    .param p1, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRadioClosed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 62
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 63
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1}, Lcom/ecarx/sdk/radio/RadioCallback;->onRadioClosed()V

    goto :goto_29

    .line 65
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 66
    return-void
.end method

.method public onScanStarted(I)V
    .registers 7
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 122
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 123
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/TuneDirection;->tuneDirectionFromId(I)Lcom/ecarx/sdk/radio/TuneDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onScanStarted(Lcom/ecarx/sdk/radio/TuneDirection;)V

    goto :goto_29

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    .line 126
    return-void
.end method

.method public onScanStopped(Z)V
    .registers 7
    .param p1, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanStopped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 132
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 133
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1}, Lcom/ecarx/sdk/radio/RadioCallback;->onScanStopped()V

    goto :goto_29

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 136
    return-void
.end method

.method public onSeekStarted(I)V
    .registers 7
    .param p1, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSeekStarted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 102
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 103
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-static {p1}, Lcom/ecarx/sdk/radio/TuneDirection;->tuneDirectionFromId(I)Lcom/ecarx/sdk/radio/TuneDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ecarx/sdk/radio/RadioCallback;->onSeekStarted(Lcom/ecarx/sdk/radio/TuneDirection;)V

    goto :goto_29

    .line 105
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_1f .. :try_end_3f} :catchall_3d

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_40
    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3d

    .line 106
    return-void
.end method

.method public onSeekStopped(Z)V
    .registers 6
    .param p1, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    const-string v2, "RadioServerImpl"

    const-string v3, "onSeekStopped: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_e
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 113
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1}, Lcom/ecarx/sdk/radio/RadioCallback;->onSeekStopped()V

    goto :goto_18

    .line 115
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_e .. :try_end_2a} :catchall_28

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 116
    return-void
.end method

.method public onStation(I)V
    .registers 7
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    const-string v2, "RadioServerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 92
    :try_start_1f
    iget-object v2, p0, Lcom/ecarx/sdk/radio/RadioServerImpl$2;->this$0:Lcom/ecarx/sdk/radio/RadioServerImpl;

    # getter for: Lcom/ecarx/sdk/radio/RadioServerImpl;->mRadioCallbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/ecarx/sdk/radio/RadioServerImpl;->access$100(Lcom/ecarx/sdk/radio/RadioServerImpl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecarx/sdk/radio/RadioCallback;

    .line 93
    .local v1, "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    invoke-virtual {v1, p1}, Lcom/ecarx/sdk/radio/RadioCallback;->onStation(I)V

    goto :goto_29

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "radioCallback":Lcom/ecarx/sdk/radio/RadioCallback;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_39

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3c
    :try_start_3c
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_39

    .line 96
    return-void
.end method
