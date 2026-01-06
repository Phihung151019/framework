.class Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehFkeymaster.java"

# interfaces
.implements Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub;
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

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedVersion:I

    .line 758
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 755
    iput-object p1, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 756
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 761
    iget-object v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public decryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1050
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1055
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1058
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1059
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    nop

    .line 1069
    return v3

    .line 1060
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p2    # "keyBlob":[B
    .end local p3    # "iv":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1066
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p2    # "keyBlob":[B
    .restart local p3    # "iv":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    throw v2
.end method

.method public decryptFinish([BI)[B
    .locals 5
    .param p1, "cipher"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1120
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1122
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1125
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    nop

    .line 1132
    return-object v3

    .line 1123
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "cipher":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "cipher":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw v2
.end method

.method public decryptSalt([B[B)[B
    .locals 5
    .param p1, "privateKey"    # [B
    .param p2, "eSalt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1314
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1321
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1322
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1326
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    nop

    .line 1332
    return-object v3

    .line 1323
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptSalt is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "privateKey":[B
    .end local p2    # "eSalt":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "privateKey":[B
    .restart local p2    # "eSalt":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    throw v2
.end method

.method public decryptUpdate([BI)[B
    .locals 5
    .param p1, "cipher"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1073
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1081
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1084
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1088
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1090
    nop

    .line 1091
    return-object v3

    .line 1082
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "cipher":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1088
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "cipher":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1090
    throw v2
.end method

.method public decryptUpdateAad([BI)V
    .locals 5
    .param p1, "aad"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1095
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1098
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1099
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1100
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1102
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1105
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1110
    nop

    .line 1111
    return-void

    .line 1103
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method decryptUpdateAad is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "aad":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "aad":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1110
    throw v2
.end method

.method public ecdh([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "privateKey"    # [B
    .param p3, "publicKey"    # [B
    .param p4, "label"    # [B
    .param p5, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 866
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 867
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 868
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 869
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 870
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 874
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 877
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    nop

    .line 880
    return-object v3

    .line 871
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ecdh is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p2    # "privateKey":[B
    .end local p3    # "publicKey":[B
    .end local p4    # "label":[B
    .end local p5    # "context":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p2    # "privateKey":[B
    .restart local p3    # "publicKey":[B
    .restart local p4    # "label":[B
    .restart local p5    # "context":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    throw v2
.end method

.method public ecdhPQDec([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B)[B
    .locals 5
    .param p1, "keyPriPQ"    # [B
    .param p2, "cipherText"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "privateKey"    # [B
    .param p5, "publicKey"    # [B
    .param p6, "label"    # [B
    .param p7, "context"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 912
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 919
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 920
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 921
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 922
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 923
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 924
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 925
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 929
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    nop

    .line 935
    return-object v3

    .line 926
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ecdhPQDec is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyPriPQ":[B
    .end local p2    # "cipherText":[B
    .end local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p4    # "privateKey":[B
    .end local p5    # "publicKey":[B
    .end local p6    # "label":[B
    .end local p7    # "context":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyPriPQ":[B
    .restart local p2    # "cipherText":[B
    .restart local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p4    # "privateKey":[B
    .restart local p5    # "publicKey":[B
    .restart local p6    # "label":[B
    .restart local p7    # "context":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 933
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 934
    throw v2
.end method

.method public ecdhPQEnc([B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B[B[B)[B
    .locals 5
    .param p1, "keyPubPQ"    # [B
    .param p2, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p3, "privateKey"    # [B
    .param p4, "publicKey"    # [B
    .param p5, "label"    # [B
    .param p6, "context"    # [B
    .param p7, "cipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 884
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 885
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 890
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 892
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 893
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 894
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 895
    array-length v3, p7

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 897
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 900
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 901
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 902
    .local v3, "_result":[B
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    nop

    .line 908
    return-object v3

    .line 898
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method ecdhPQEnc is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyPubPQ":[B
    .end local p2    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p3    # "privateKey":[B
    .end local p4    # "publicKey":[B
    .end local p5    # "label":[B
    .end local p6    # "context":[B
    .end local p7    # "cipherText":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 905
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyPubPQ":[B
    .restart local p2    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p3    # "privateKey":[B
    .restart local p4    # "publicKey":[B
    .restart local p5    # "label":[B
    .restart local p6    # "context":[B
    .restart local p7    # "cipherText":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    throw v2
.end method

.method public encryptBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B)I
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .param p3, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 967
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 968
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 969
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 970
    array-length v3, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 971
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 972
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 975
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 976
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 977
    .local v3, "_result":I
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    nop

    .line 983
    return v3

    .line 973
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p2    # "keyBlob":[B
    .end local p3    # "iv":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p2    # "keyBlob":[B
    .restart local p3    # "iv":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 981
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 982
    throw v2
.end method

.method public encryptFinish([BI)[B
    .locals 5
    .param p1, "plain"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1028
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1034
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1036
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1039
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1040
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1043
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    nop

    .line 1046
    return-object v3

    .line 1037
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "plain":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "plain":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1044
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1045
    throw v2
.end method

.method public encryptRSA([B[B)[B
    .locals 5
    .param p1, "publicKey"    # [B
    .param p2, "plain"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1384
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1390
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1391
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1392
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1395
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1396
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    nop

    .line 1402
    return-object v3

    .line 1393
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptRSA is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "publicKey":[B
    .end local p2    # "plain":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1399
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "publicKey":[B
    .restart local p2    # "plain":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1401
    throw v2
.end method

.method public encryptUpdate([BI)[B
    .locals 5
    .param p1, "plain"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 987
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 993
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 995
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 999
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    nop

    .line 1005
    return-object v3

    .line 996
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "plain":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "plain":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1003
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    throw v2
.end method

.method public encryptUpdateAad([BI)V
    .locals 5
    .param p1, "aad"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1009
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1010
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1014
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1016
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1019
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    nop

    .line 1025
    return-void

    .line 1017
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method encryptUpdateAad is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "aad":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "aad":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1024
    throw v2
.end method

.method public exportData([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B[B[B)[B
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "dataKey"    # [B
    .param p3, "soKey"    # [B
    .param p4, "publicKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1336
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1341
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1343
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1344
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1345
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1346
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1350
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1353
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    nop

    .line 1356
    return-object v3

    .line 1347
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportData is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p2    # "dataKey":[B
    .end local p3    # "soKey":[B
    .end local p4    # "publicKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1353
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p2    # "dataKey":[B
    .restart local p3    # "soKey":[B
    .restart local p4    # "publicKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1354
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1355
    throw v2
.end method

.method public exportKey([B[B[B[B)[B
    .locals 5
    .param p1, "encryptionKey"    # [B
    .param p2, "exportedKey"    # [B
    .param p3, "pw"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 815
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 817
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 818
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 819
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 820
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 821
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 825
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 828
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    nop

    .line 831
    return-object v3

    .line 822
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method exportKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "encryptionKey":[B
    .end local p2    # "exportedKey":[B
    .end local p3    # "pw":[B
    .end local p4    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 828
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "encryptionKey":[B
    .restart local p2    # "exportedKey":[B
    .restart local p3    # "pw":[B
    .restart local p4    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 829
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v2
.end method

.method public generateKey([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 769
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 770
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 773
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 774
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 775
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 776
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 779
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 780
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    nop

    .line 786
    return-object v3

    .line 777
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 783
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 785
    throw v2
.end method

.method public generateKeyPQ([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;)[B
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 790
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 796
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 797
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    nop

    .line 807
    return-object v3

    .line 798
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKeyPQ is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 765
    sget-object v0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 1423
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1425
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1427
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1428
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1429
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1432
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    goto :goto_0

    .line 1432
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1434
    throw v2

    .line 1436
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 1422
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

    .line 1406
    iget v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1407
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1408
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1410
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1412
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1417
    goto :goto_0

    .line 1415
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1416
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1417
    throw v2

    .line 1419
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public importData([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B
    .locals 5
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptedData"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1360
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1367
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1368
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1369
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1370
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1377
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1379
    nop

    .line 1380
    return-object v3

    .line 1371
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importData is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "encryptionKey":[B
    .end local p2    # "encryptedData":[B
    .end local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p4    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1377
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "encryptionKey":[B
    .restart local p2    # "encryptedData":[B
    .restart local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p4    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1379
    throw v2
.end method

.method public importKey([B[B[B[B)[B
    .locals 5
    .param p1, "encryptionKey"    # [B
    .param p2, "encryptedKey"    # [B
    .param p3, "pw"    # [B
    .param p4, "aad"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 835
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 836
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 839
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 840
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 841
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 842
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 843
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 844
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 845
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 848
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 849
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    nop

    .line 855
    return-object v3

    .line 846
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "encryptionKey":[B
    .end local p2    # "encryptedKey":[B
    .end local p3    # "pw":[B
    .end local p4    # "aad":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 852
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "encryptionKey":[B
    .restart local p2    # "encryptedKey":[B
    .restart local p3    # "pw":[B
    .restart local p4    # "aad":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 853
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 854
    throw v2
.end method

.method public kdf([B[B[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)[B
    .locals 5
    .param p1, "label"    # [B
    .param p2, "context"    # [B
    .param p3, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p4, "privateKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 940
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 943
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 945
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 946
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 947
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 948
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 949
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 952
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 956
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
    nop

    .line 959
    return-object v3

    .line 950
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method kdf is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "label":[B
    .end local p2    # "context":[B
    .end local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p4    # "privateKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "label":[B
    .restart local p2    # "context":[B
    .restart local p3    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p4    # "privateKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 957
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 958
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

    .line 1243
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1251
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1254
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1255
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1260
    nop

    .line 1261
    return-object v3

    .line 1252
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyDerivation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "type":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1258
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "type":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1260
    throw v2
.end method

.method public keyRecovery([B[B[B[B)[B
    .locals 5
    .param p1, "wk"    # [B
    .param p2, "sTAkey"    # [B
    .param p3, "eCeRk"    # [B
    .param p4, "rkresult"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1290
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1293
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1296
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1297
    array-length v2, p4

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1299
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1302
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1304
    .local v3, "_result":[B
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    nop

    .line 1310
    return-object v3

    .line 1300
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyRecovery is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "wk":[B
    .end local p2    # "sTAkey":[B
    .end local p3    # "eCeRk":[B
    .end local p4    # "rkresult":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1307
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "wk":[B
    .restart local p2    # "sTAkey":[B
    .restart local p3    # "eCeRk":[B
    .restart local p4    # "rkresult":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1308
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    throw v2
.end method

.method public keyRegister([B[B[B[B)[B
    .locals 5
    .param p1, "rk"    # [B
    .param p2, "cek"    # [B
    .param p3, "wk"    # [B
    .param p4, "HSMpkey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1265
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1271
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1272
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1273
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1274
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1275
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1279
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1284
    nop

    .line 1285
    return-object v3

    .line 1276
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method keyRegister is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "rk":[B
    .end local p2    # "cek":[B
    .end local p3    # "wk":[B
    .end local p4    # "HSMpkey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1282
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "rk":[B
    .restart local p2    # "cek":[B
    .restart local p3    # "wk":[B
    .restart local p4    # "HSMpkey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1284
    throw v2
.end method

.method public secureImportKey([B[B)[B
    .locals 5
    .param p1, "publicKey"    # [B
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1199
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1205
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1206
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1207
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1210
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1211
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1216
    nop

    .line 1217
    return-object v3

    .line 1208
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method secureImportKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "publicKey":[B
    .end local p2    # "wrappedKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "publicKey":[B
    .restart local p2    # "wrappedKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1216
    throw v2
.end method

.method public secureImportKeySHA1([B[B)[B
    .locals 5
    .param p1, "publicKey"    # [B
    .param p2, "wrappedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1221
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1222
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1225
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1227
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1228
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1229
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1232
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1233
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1236
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1238
    nop

    .line 1239
    return-object v3

    .line 1230
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method secureImportKeySHA1 is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "publicKey":[B
    .end local p2    # "wrappedKey":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1236
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "publicKey":[B
    .restart local p2    # "wrappedKey":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1238
    throw v2
.end method

.method public signBegin([Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;[B)I
    .locals 5
    .param p1, "keyParams"    # [Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .param p2, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1141
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1142
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1143
    iget-object v3, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1144
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1151
    .end local v2    # "_status":Z
    .local v3, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    nop

    .line 1154
    return v3

    .line 1145
    .end local v3    # "_result":I
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signBegin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .end local p2    # "keyBlob":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1151
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "keyParams":[Lvendor/samsung/hardware/security/fkeymaster/SehKeyParameter;
    .restart local p2    # "keyBlob":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    throw v2
.end method

.method public signFinish([BI)[B
    .locals 5
    .param p1, "data"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1177
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1178
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1182
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1183
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1184
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1185
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1188
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1189
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1192
    .end local v2    # "_status":Z
    .local v3, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1194
    nop

    .line 1195
    return-object v3

    .line 1186
    .end local v3    # "_result":[B
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signFinish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "data":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "data":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1194
    throw v2
.end method

.method public signUpdate([BI)V
    .locals 5
    .param p1, "data"    # [B
    .param p2, "operationHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1158
    invoke-virtual {p0}, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v2, p0, Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1165
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    nop

    .line 1174
    return-void

    .line 1166
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method signUpdate is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .end local p1    # "data":[B
    .end local p2    # "operationHandle":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1171
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/security/fkeymaster/ISehFkeymaster$Stub$Proxy;
    .restart local p1    # "data":[B
    .restart local p2    # "operationHandle":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1173
    throw v2
.end method
