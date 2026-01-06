.class public abstract Lcom/sec/ims/IAutoConfigurationListener$Stub;
.super Landroid/os/Binder;
.source "IAutoConfigurationListener.java"

# interfaces
.implements Lcom/sec/ims/IAutoConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/IAutoConfigurationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAutoConfigurationCompleted:I = 0x4

.field static final TRANSACTION_onIidTokenNeeded:I = 0x3

.field static final TRANSACTION_onMsisdnNumberNeeded:I = 0x2

.field static final TRANSACTION_onVerificationCodeNeeded:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IAutoConfigurationListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_0
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    instance-of v1, v0, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz v1, :cond_1

    .line 52
    check-cast v0, Lcom/sec/ims/IAutoConfigurationListener;

    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/IAutoConfigurationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 63
    const-string v0, "com.sec.ims.IAutoConfigurationListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 67
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 93
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 95
    invoke-interface {p0, p1}, Lcom/sec/ims/IAutoConfigurationListener;->onAutoConfigurationCompleted(Z)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-interface {p0}, Lcom/sec/ims/IAutoConfigurationListener;->onIidTokenNeeded()V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 80
    :cond_4
    invoke-interface {p0}, Lcom/sec/ims/IAutoConfigurationListener;->onMsisdnNumberNeeded()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 74
    :cond_5
    invoke-interface {p0}, Lcom/sec/ims/IAutoConfigurationListener;->onVerificationCodeNeeded()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1
.end method
