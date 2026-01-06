.class Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFabricCryptoService.java"

# interfaces
.implements Lcom/samsung/security/fabric/cryptod/IFabricCryptoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedVersion:I

    .line 904
    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 901
    iput-object p1, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 902
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 907
    iget-object v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkImportedBlobWithPassword([B[B[B)I
    .locals 5
    .param p1, "wrappedKey"    # [B
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1361
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1362
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1363
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    nop

    .line 1373
    return v3

    .line 1364
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method checkImportedBlobWithPassword is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "password":[B
    .end local p3    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1370
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "password":[B
    .restart local p3    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1372
    throw v2
.end method

.method public decryptBegin(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "iv"    # [B
    .param p3, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1152
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1155
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1158
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1159
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1160
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1163
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1167
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    nop

    .line 1170
    return v3

    .line 1161
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "iv":[B
    .end local p3    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1167
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "iv":[B
    .restart local p3    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1169
    throw v2
.end method

.method public decryptFinish([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1218
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1222
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1226
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1229
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1230
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1233
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    nop

    .line 1236
    return-object v3

    .line 1227
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1233
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1234
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1235
    throw v2
.end method

.method public decryptSalt(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "eSalt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1645
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1650
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1651
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1652
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1655
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1656
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1659
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1661
    nop

    .line 1662
    return-object v3

    .line 1653
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptSalt is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "eSalt":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1659
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "eSalt":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1661
    throw v2
.end method

.method public decryptUpdate([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1174
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1182
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1185
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1186
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    nop

    .line 1192
    return-object v3

    .line 1183
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1189
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1191
    throw v2
.end method

.method public decryptUpdateAad([BI)I
    .locals 5
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1202
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1204
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1208
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    nop

    .line 1214
    return v3

    .line 1205
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptUpdateAad is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "aad":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "aad":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1213
    throw v2
.end method

.method public deleteKey(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 957
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 961
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 963
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 964
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 973
    nop

    .line 974
    return v3

    .line 965
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deleteKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 972
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 973
    throw v2
.end method

.method public encryptBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)Lcom/samsung/security/fabric/cryptod/OperationResult;
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1069
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1070
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1071
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1074
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1075
    sget-object v3, Lcom/samsung/security/fabric/cryptod/OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/security/fabric/cryptod/OperationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    .end local v2    # "_status":Z
    .local v3, "_result":Lcom/samsung/security/fabric/cryptod/OperationResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    nop

    .line 1081
    return-object v3

    .line 1072
    .end local v3    # "_result":Lcom/samsung/security/fabric/cryptod/OperationResult;
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1078
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1079
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1080
    throw v2
.end method

.method public encryptFinish([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1129
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1133
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1135
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1136
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1137
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1140
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    nop

    .line 1147
    return-object v3

    .line 1138
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1144
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    throw v2
.end method

.method public encryptUpdate([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1086
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1091
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1092
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1093
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1096
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1097
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1100
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    nop

    .line 1103
    return-object v3

    .line 1094
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1100
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1102
    throw v2
.end method

.method public encryptUpdateAad([BI)I
    .locals 5
    .param p1, "aad"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1107
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1108
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1111
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1115
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1118
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1119
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1122
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    nop

    .line 1125
    return v3

    .line 1116
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptUpdateAad is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "aad":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1122
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "aad":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1124
    throw v2
.end method

.method public existKey(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1022
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1029
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1033
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1038
    nop

    .line 1039
    return v3

    .line 1030
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method existKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1036
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1037
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1038
    throw v2
.end method

.method public exportKey(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1377
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1378
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1381
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1383
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1385
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1386
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1389
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1390
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    nop

    .line 1396
    return-object v3

    .line 1387
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "exportedKeyAlias":Ljava/lang/String;
    .end local p2    # "wrappingKeyAlias":Ljava/lang/String;
    .end local p3    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1393
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "exportedKeyAlias":Ljava/lang/String;
    .restart local p2    # "wrappingKeyAlias":Ljava/lang/String;
    .restart local p3    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    throw v2
.end method

.method public exportKeyWithPassword(Ljava/lang/String;[B[B)[B
    .locals 5
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "password"    # [B
    .param p3, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1407
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1408
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1409
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    nop

    .line 1419
    return-object v3

    .line 1410
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportKeyWithPassword is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "exportedKeyAlias":Ljava/lang/String;
    .end local p2    # "password":[B
    .end local p3    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1416
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "exportedKeyAlias":Ljava/lang/String;
    .restart local p2    # "password":[B
    .restart local p3    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1418
    throw v2
.end method

.method public exportKeyWithSecureImport(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1423
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1429
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1430
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1431
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1435
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1438
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    nop

    .line 1441
    return-object v3

    .line 1432
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportKeyWithSecureImport is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "exportedKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1438
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "exportedKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    throw v2
.end method

.method public exportKeyWithSecureImportSHA1(Ljava/lang/String;[B)[B
    .locals 5
    .param p1, "exportedKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1452
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1453
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1457
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1460
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    nop

    .line 1463
    return-object v3

    .line 1454
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportKeyWithSecureImportSHA1 is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "exportedKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1460
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "exportedKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1462
    throw v2
.end method

.method public exportPrivkeyData(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "sokeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1689
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1696
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1697
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1701
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    nop

    .line 1707
    return-object v3

    .line 1698
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportPrivkeyData is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "dataAlias":Ljava/lang/String;
    .end local p2    # "sokeyAlias":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1704
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "dataAlias":Ljava/lang/String;
    .restart local p2    # "sokeyAlias":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1706
    throw v2
.end method

.method public exportPubkeyData(Ljava/lang/String;[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B
    .locals 5
    .param p1, "dataAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1666
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1670
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1673
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1674
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1675
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1678
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1679
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    nop

    .line 1685
    return-object v3

    .line 1676
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportPubkeyData is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "dataAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .end local p3    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1682
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "dataAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    .restart local p3    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1684
    throw v2
.end method

.method public generateKey(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 978
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 979
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 982
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 984
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 985
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 986
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    nop

    .line 996
    return v3

    .line 987
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    throw v2
.end method

.method public generateKeyPQ(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1006
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1007
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1008
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1012
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    nop

    .line 1018
    return v3

    .line 1009
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKeyPQ is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1015
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1016
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1017
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 911
    sget-object v0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1753
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1754
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1755
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1757
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1758
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1759
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1760
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    goto :goto_0

    .line 1762
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    throw v2

    .line 1766
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1752
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    iget v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1737
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1738
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1740
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1745
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    goto :goto_0

    .line 1745
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw v2

    .line 1749
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getPQEncapKey(Ljava/lang/String;)[B
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 942
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 943
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 946
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 947
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    nop

    .line 953
    return-object v3

    .line 944
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPQEncapKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 950
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    throw v2
.end method

.method public getPublicKey(Ljava/lang/String;)[B
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 915
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 916
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 919
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 921
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 922
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    nop

    .line 932
    return-object v3

    .line 923
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getPublicKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "name":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw v2
.end method

.method public importData(Ljava/lang/String;[BLjava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;[B)I
    .locals 5
    .param p1, "wrappedDataAlias"    # Ljava/lang/String;
    .param p2, "wrappedData"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .param p5, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1718
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1719
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1720
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1721
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1722
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1725
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    nop

    .line 1732
    return v3

    .line 1723
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importData is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "wrappedDataAlias":Ljava/lang/String;
    .end local p2    # "wrappedData":[B
    .end local p3    # "wrappingKeyAlias":Ljava/lang/String;
    .end local p4    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .end local p5    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1729
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "wrappedDataAlias":Ljava/lang/String;
    .restart local p2    # "wrappedData":[B
    .restart local p3    # "wrappingKeyAlias":Ljava/lang/String;
    .restart local p4    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .restart local p5    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1731
    throw v2
.end method

.method public importKey(Ljava/lang/String;[BLjava/lang/String;[B)I
    .locals 5
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1306
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1313
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1315
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1316
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1323
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    nop

    .line 1326
    return v3

    .line 1317
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "wrappedKeyAlias":Ljava/lang/String;
    .end local p2    # "wrappedKey":[B
    .end local p3    # "wrappingKeyAlias":Ljava/lang/String;
    .end local p4    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1323
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "wrappedKeyAlias":Ljava/lang/String;
    .restart local p2    # "wrappedKey":[B
    .restart local p3    # "wrappingKeyAlias":Ljava/lang/String;
    .restart local p4    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    throw v2
.end method

.method public importKeyWithPassword(Ljava/lang/String;[B[B[B)I
    .locals 5
    .param p1, "wrappedKeyAlias"    # Ljava/lang/String;
    .param p2, "wrappedKey"    # [B
    .param p3, "password"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1330
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1337
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1338
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1339
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1340
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1344
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    nop

    .line 1350
    return v3

    .line 1341
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKeyWithPassword is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "wrappedKeyAlias":Ljava/lang/String;
    .end local p2    # "wrappedKey":[B
    .end local p3    # "password":[B
    .end local p4    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1347
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "wrappedKeyAlias":Ljava/lang/String;
    .restart local p2    # "wrappedKey":[B
    .restart local p3    # "password":[B
    .restart local p4    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    throw v2
.end method

.method public keyAgreement(Ljava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "publicKey"    # [B
    .param p3, "secretKeyAlias"    # Ljava/lang/String;
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .param p6, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1474
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1476
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1477
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1478
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1479
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1486
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1488
    nop

    .line 1489
    return v3

    .line 1480
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyAgreement is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "privateKeyAlias":Ljava/lang/String;
    .end local p2    # "publicKey":[B
    .end local p3    # "secretKeyAlias":Ljava/lang/String;
    .end local p4    # "label":[B
    .end local p5    # "context":[B
    .end local p6    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1486
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "privateKeyAlias":Ljava/lang/String;
    .restart local p2    # "publicKey":[B
    .restart local p3    # "secretKeyAlias":Ljava/lang/String;
    .restart local p4    # "label":[B
    .restart local p5    # "context":[B
    .restart local p6    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1488
    throw v2
.end method

.method public keyAgreementPQdecap(Ljava/lang/String;[BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "decapKeyAlias"    # Ljava/lang/String;
    .param p2, "cipherText"    # [B
    .param p3, "privateKeyAlias"    # Ljava/lang/String;
    .param p4, "publicKey"    # [B
    .param p5, "secretKeyAlias"    # Ljava/lang/String;
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .param p8, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1527
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1528
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1529
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1531
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1532
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1533
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1534
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1538
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1543
    nop

    .line 1544
    return v3

    .line 1535
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyAgreementPQdecap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "decapKeyAlias":Ljava/lang/String;
    .end local p2    # "cipherText":[B
    .end local p3    # "privateKeyAlias":Ljava/lang/String;
    .end local p4    # "publicKey":[B
    .end local p5    # "secretKeyAlias":Ljava/lang/String;
    .end local p6    # "label":[B
    .end local p7    # "context":[B
    .end local p8    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1541
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "decapKeyAlias":Ljava/lang/String;
    .restart local p2    # "cipherText":[B
    .restart local p3    # "privateKeyAlias":Ljava/lang/String;
    .restart local p4    # "publicKey":[B
    .restart local p5    # "secretKeyAlias":Ljava/lang/String;
    .restart local p6    # "label":[B
    .restart local p7    # "context":[B
    .restart local p8    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1543
    throw v2
.end method

.method public keyAgreementPQencap([BLjava/lang/String;[BLjava/lang/String;[B[B[Lcom/samsung/security/fabric/cryptod/KeyParameter;)[B
    .locals 5
    .param p1, "encapKey"    # [B
    .param p2, "privateKeyAlias"    # Ljava/lang/String;
    .param p3, "publicKey"    # [B
    .param p4, "secretKeyAlias"    # Ljava/lang/String;
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1493
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1499
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1500
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1501
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1503
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1504
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1505
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1506
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1510
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    nop

    .line 1516
    return-object v3

    .line 1507
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyAgreementPQencap is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "encapKey":[B
    .end local p2    # "privateKeyAlias":Ljava/lang/String;
    .end local p3    # "publicKey":[B
    .end local p4    # "secretKeyAlias":Ljava/lang/String;
    .end local p5    # "label":[B
    .end local p6    # "context":[B
    .end local p7    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1513
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "encapKey":[B
    .restart local p2    # "privateKeyAlias":Ljava/lang/String;
    .restart local p3    # "publicKey":[B
    .restart local p4    # "secretKeyAlias":Ljava/lang/String;
    .restart local p5    # "label":[B
    .restart local p6    # "context":[B
    .restart local p7    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw v2
.end method

.method public keyDerivation([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1573
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1579
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1581
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1585
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1588
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    nop

    .line 1591
    return-object v3

    .line 1582
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyDerivation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "type":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1588
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "type":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1590
    throw v2
.end method

.method public keyDerivationAlias([B[BLjava/lang/String;Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "inputAlias"    # Ljava/lang/String;
    .param p4, "outputAlias"    # Ljava/lang/String;
    .param p5, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1548
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1555
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1557
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1558
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1559
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1566
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1568
    nop

    .line 1569
    return v3

    .line 1560
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyDerivationAlias is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .end local p3    # "inputAlias":Ljava/lang/String;
    .end local p4    # "outputAlias":Ljava/lang/String;
    .end local p5    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1566
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    .restart local p3    # "inputAlias":Ljava/lang/String;
    .restart local p4    # "outputAlias":Ljava/lang/String;
    .restart local p5    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1568
    throw v2
.end method

.method public keyRecovery(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)I
    .locals 5
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "sTAAlias"    # Ljava/lang/String;
    .param p4, "wk"    # [B
    .param p5, "eCeRk"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1619
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1626
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1628
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1629
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1630
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1634
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1637
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1639
    nop

    .line 1640
    return v3

    .line 1631
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyRecovery is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "rkAlias":Ljava/lang/String;
    .end local p2    # "cekAlias":Ljava/lang/String;
    .end local p3    # "sTAAlias":Ljava/lang/String;
    .end local p4    # "wk":[B
    .end local p5    # "eCeRk":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1637
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "rkAlias":Ljava/lang/String;
    .restart local p2    # "cekAlias":Ljava/lang/String;
    .restart local p3    # "sTAAlias":Ljava/lang/String;
    .restart local p4    # "wk":[B
    .restart local p5    # "eCeRk":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1638
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1639
    throw v2
.end method

.method public keyRegister(Ljava/lang/String;Ljava/lang/String;[B[B)[B
    .locals 5
    .param p1, "rkAlias"    # Ljava/lang/String;
    .param p2, "cekAlias"    # Ljava/lang/String;
    .param p3, "wk"    # [B
    .param p4, "HSMpkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1595
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1602
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1603
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1604
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1605
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1609
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    nop

    .line 1615
    return-object v3

    .line 1606
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyRegister is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "rkAlias":Ljava/lang/String;
    .end local p2    # "cekAlias":Ljava/lang/String;
    .end local p3    # "wk":[B
    .end local p4    # "HSMpkey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1612
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "rkAlias":Ljava/lang/String;
    .restart local p2    # "cekAlias":Ljava/lang/String;
    .restart local p3    # "wk":[B
    .restart local p4    # "HSMpkey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1614
    throw v2
.end method

.method public list()[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1043
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1044
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1047
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1048
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1049
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1052
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    .end local v2    # "_status":Z
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    nop

    .line 1059
    return-object v3

    .line 1050
    .end local v3    # "_result":[Ljava/lang/String;
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method list is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1057
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1058
    throw v2
.end method

.method public signBegin(Ljava/lang/String;[Lcom/samsung/security/fabric/cryptod/KeyParameter;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # [Lcom/samsung/security/fabric/cryptod/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1240
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1241
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1246
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1247
    iget-object v3, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1248
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    nop

    .line 1258
    return v3

    .line 1249
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1255
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "params":[Lcom/samsung/security/fabric/cryptod/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1257
    throw v2
.end method

.method public signFinish([BI)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1292
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1295
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1296
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    nop

    .line 1302
    return-object v3

    .line 1293
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1299
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1301
    throw v2
.end method

.method public signUpdate([BI)I
    .locals 5
    .param p1, "input"    # [B
    .param p2, "opHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1262
    invoke-virtual {p0}, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1266
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    iget-object v2, p0, Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1270
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1274
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    nop

    .line 1280
    return v3

    .line 1271
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "opHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1277
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lcom/samsung/security/fabric/cryptod/IFabricCryptoService$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "opHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    throw v2
.end method
