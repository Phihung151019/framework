.class public abstract Landroidx/car/app/constraints/IConstraintHost$Stub;
.super Landroid/os/Binder;
.source "IConstraintHost.java"

# interfaces
.implements Landroidx/car/app/constraints/IConstraintHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/constraints/IConstraintHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/constraints/IConstraintHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getContentLimit:I = 0x2

.field static final TRANSACTION_isAppDrivenRefreshEnabled:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 32
    sget-object v0, Landroidx/car/app/constraints/IConstraintHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/car/app/constraints/IConstraintHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/car/app/constraints/IConstraintHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    sget-object v0, Landroidx/car/app/constraints/IConstraintHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 44
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/car/app/constraints/IConstraintHost;

    if-eqz v1, :cond_1

    .line 45
    move-object v1, v0

    check-cast v1, Landroidx/car/app/constraints/IConstraintHost;

    return-object v1

    .line 47
    :cond_1
    new-instance v1, Landroidx/car/app/constraints/IConstraintHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/car/app/constraints/IConstraintHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 51
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

    .line 55
    sget-object v0, Landroidx/car/app/constraints/IConstraintHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 56
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 57
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 67
    packed-switch p1, :pswitch_data_1

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 63
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return v1

    .line 80
    :pswitch_1
    invoke-virtual {p0}, Landroidx/car/app/constraints/IConstraintHost$Stub;->isAppDrivenRefreshEnabled()Z

    move-result v2

    .line 81
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    goto :goto_0

    .line 72
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 73
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroidx/car/app/constraints/IConstraintHost$Stub;->getContentLimit(I)I

    move-result v3

    .line 74
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    nop

    .line 90
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
