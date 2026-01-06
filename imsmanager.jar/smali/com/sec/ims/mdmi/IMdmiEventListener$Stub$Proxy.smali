.class Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMdmiEventListener.java"

# interfaces
.implements Lcom/sec/ims/mdmi/IMdmiEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/mdmi/IMdmiEventListener$Stub;
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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 107
    const-string p0, "com.sec.ims.mdmi.IMdmiEventListener"

    return-object p0
.end method

.method public onE911StatsUpdated(JJJJJDDD)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 114
    :try_start_0
    const-string v0, "com.sec.ims.mdmi.IMdmiEventListener"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 117
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    invoke-virtual {v1, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    invoke-virtual {v1, p11, p12}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 p1, p13

    .line 121
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    move-wide/from16 p1, p15

    .line 122
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 123
    iget-object p0, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v1, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 124
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 127
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 129
    throw p0
.end method
