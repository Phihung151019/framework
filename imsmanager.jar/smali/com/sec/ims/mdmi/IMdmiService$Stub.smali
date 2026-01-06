.class public abstract Lcom/sec/ims/mdmi/IMdmiService$Stub;
.super Landroid/os/Binder;
.source "IMdmiService.java"

# interfaces
.implements Lcom/sec/ims/mdmi/IMdmiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/mdmi/IMdmiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/mdmi/IMdmiService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerMdmiEventListener:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 31
    const-string v0, "com.sec.ims.mdmi.IMdmiService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/mdmi/IMdmiService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 42
    :cond_0
    const-string v0, "com.sec.ims.mdmi.IMdmiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    instance-of v1, v0, Lcom/sec/ims/mdmi/IMdmiService;

    if-eqz v1, :cond_1

    .line 44
    check-cast v0, Lcom/sec/ims/mdmi/IMdmiService;

    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/sec/ims/mdmi/IMdmiService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/mdmi/IMdmiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "com.sec.ims.mdmi.IMdmiService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 56
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_2

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 67
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/mdmi/IMdmiEventListener;

    move-result-object p1

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 69
    invoke-interface {p0, p1}, Lcom/sec/ims/mdmi/IMdmiService;->registerMdmiEventListener(Lcom/sec/ims/mdmi/IMdmiEventListener;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
