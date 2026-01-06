.class public abstract Landroidx/car/app/ICarHost$Stub;
.super Landroid/os/Binder;
.source "ICarHost.java"

# interfaces
.implements Landroidx/car/app/ICarHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/ICarHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/ICarHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_finish:I = 0x4

.field static final TRANSACTION_getHost:I = 0x3

.field static final TRANSACTION_startCarApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    sget-object v0, Landroidx/car/app/ICarHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/car/app/ICarHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/car/app/ICarHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return-object v0

    .line 50
    :cond_0
    sget-object v0, Landroidx/car/app/ICarHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/car/app/ICarHost;

    if-eqz v1, :cond_1

    .line 52
    move-object v1, v0

    check-cast v1, Landroidx/car/app/ICarHost;

    return-object v1

    .line 54
    :cond_1
    new-instance v1, Landroidx/car/app/ICarHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/car/app/ICarHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 58
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    sget-object v0, Landroidx/car/app/ICarHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 63
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 74
    packed-switch p1, :pswitch_data_1

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 95
    :pswitch_1
    invoke-virtual {p0}, Landroidx/car/app/ICarHost$Stub;->finish()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarHost$Stub;->getHost(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 89
    .local v3, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 91
    goto :goto_0

    .line 79
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/IBinder;
    :pswitch_3
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/ICarHost$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 80
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroidx/car/app/ICarHost$Stub;->startCarApp(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    nop

    .line 104
    .end local v2    # "_arg0":Landroid/content/Intent;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
