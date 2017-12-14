.class Lecarx/naviservice/INaviObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "INaviObserver.java"

# interfaces
.implements Lecarx/naviservice/INaviObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecarx/naviservice/INaviObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lecarx/naviservice/INaviObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 139
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lecarx/naviservice/INaviObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    const-string v0, "ecarx.naviservice.INaviObserver"

    return-object v0
.end method

.method public guideInfoChange(ILjava/lang/String;Ljava/lang/String;IIIIIIIIIIIIDDIIIIIIIIIILjava/lang/String;IZ)V
    .registers 40
    .param p1, "type"    # I
    .param p2, "curRoadName"    # Ljava/lang/String;
    .param p3, "nextRoadName"    # Ljava/lang/String;
    .param p4, "sapaDist"    # I
    .param p5, "sapaType"    # I
    .param p6, "cameraDist"    # I
    .param p7, "cameraType"    # I
    .param p8, "cameraSpeed"    # I
    .param p9, "cameraIndex"    # I
    .param p10, "icon"    # I
    .param p11, "routeRemainDis"    # I
    .param p12, "routeRemainTime"    # I
    .param p13, "segRemainDis"    # I
    .param p14, "segRemainTime"    # I
    .param p15, "carDirection"    # I
    .param p16, "carLatitude"    # D
    .param p18, "carLongitude"    # D
    .param p20, "limitedSpeed"    # I
    .param p21, "curSegNum"    # I
    .param p22, "curPointNum"    # I
    .param p23, "roundAboutNum"    # I
    .param p24, "roundAllNum"    # I
    .param p25, "routeAllDis"    # I
    .param p26, "routeAllTime"    # I
    .param p27, "curSpeed"    # I
    .param p28, "trafficLightNum"    # I
    .param p29, "sapaNum"    # I
    .param p30, "sapaName"    # Ljava/lang/String;
    .param p31, "roadType"    # I
    .param p32, "arriveStatus"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 153
    .local v2, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 155
    .local v3, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "ecarx.naviservice.INaviObserver"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v2, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    invoke-virtual {v2, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v2, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v2, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    move/from16 v0, p9

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    move/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    move/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    move/from16 v0, p15

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    move-wide/from16 v0, p16

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 172
    move-wide/from16 v0, p18

    invoke-virtual {v2, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 173
    move/from16 v0, p20

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    move/from16 v0, p21

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    move/from16 v0, p22

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    move/from16 v0, p23

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    move/from16 v0, p24

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    move/from16 v0, p25

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    move/from16 v0, p26

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    move/from16 v0, p27

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    move/from16 v0, p28

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    move/from16 v0, p29

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    move-object/from16 v0, p30

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    move/from16 v0, p31

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    if-eqz p32, :cond_a5

    const/4 v4, 0x1

    :goto_91
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v4, p0, Lecarx/naviservice/INaviObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 187
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V
    :try_end_9e
    .catchall {:try_start_8 .. :try_end_9e} :catchall_a7

    .line 190
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 193
    return-void

    .line 185
    :cond_a5
    const/4 v4, 0x0

    goto :goto_91

    .line 190
    :catchall_a7
    move-exception v4

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 191
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v4
.end method

.method public naviStateChange(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "ecarx.naviservice.INaviObserver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v2, p0, Lecarx/naviservice/INaviObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 204
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    return-void

    .line 207
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public onLocationRoadInfo(Ljava/lang/String;)V
    .registers 7
    .param p1, "info"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "ecarx.naviservice.INaviObserver"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lecarx/naviservice/INaviObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_21

    .line 224
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    return-void

    .line 224
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
