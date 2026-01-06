.class public abstract Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;
.super Landroid/os/Binder;
.source "IRcsServiceRegistrationListener.java"

# interfaces
.implements Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onServiceRegistered:I = 0x1

.field static final TRANSACTION_onServiceUnregistered:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    invoke-virtual {p0, p0, v0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    const-string v0, "com.gsma.services.rcs.IRcsServiceRegistrationListener"

    .line 58
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 59
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 62
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 65
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 76
    :pswitch_0
    sget-object v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;

    .line 77
    .local v2, "_arg0":Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    invoke-virtual {p0, v2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    goto :goto_0

    .line 69
    .end local v2    # "_arg0":Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;
    :pswitch_1
    invoke-virtual {p0}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener$Stub;->onServiceRegistered()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    nop

    .line 87
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
