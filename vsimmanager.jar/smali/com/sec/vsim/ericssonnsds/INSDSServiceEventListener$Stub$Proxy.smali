.class Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    return-object v0
.end method

.method public onNsdsServiceResponse(IZLjava/util/List;)V
    .locals 4
    .param p1, "eventType"    # I
    .param p2, "success"    # Z
    .param p3, "errorCodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 105
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.sec.vsim.ericssonnsds.INSDSServiceEventListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 109
    iget-object v1, p0, Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 113
    throw v1
.end method
