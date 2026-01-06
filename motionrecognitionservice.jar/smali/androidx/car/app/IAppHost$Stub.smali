.class public abstract Landroidx/car/app/IAppHost$Stub;
.super Landroid/os/Binder;
.source "IAppHost.java"

# interfaces
.implements Landroidx/car/app/IAppHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/car/app/IAppHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/car/app/IAppHost$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_dismissAlert:I = 0x7

.field static final TRANSACTION_invalidate:I = 0x2

.field static final TRANSACTION_openMicrophone:I = 0x8

.field static final TRANSACTION_sendLocation:I = 0x5

.field static final TRANSACTION_setSurfaceCallback:I = 0x4

.field static final TRANSACTION_showAlert:I = 0x6

.field static final TRANSACTION_showToast:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 51
    sget-object v0, Landroidx/car/app/IAppHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroidx/car/app/IAppHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/car/app/IAppHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 59
    if-nez p0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Landroidx/car/app/IAppHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/car/app/IAppHost;

    if-eqz v1, :cond_1

    .line 64
    move-object v1, v0

    check-cast v1, Landroidx/car/app/IAppHost;

    return-object v1

    .line 66
    :cond_1
    new-instance v1, Landroidx/car/app/IAppHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/car/app/IAppHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 70
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

    .line 74
    sget-object v0, Landroidx/car/app/IAppHost$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 75
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 86
    packed-switch p1, :pswitch_data_1

    .line 147
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 82
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 139
    :pswitch_1
    sget-object v2, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/IAppHost$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/serialization/Bundleable;

    .line 140
    .local v2, "_arg0":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p0, v2}, Landroidx/car/app/IAppHost$Stub;->openMicrophone(Landroidx/car/app/serialization/Bundleable;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v3

    .line 141
    .local v3, "_result":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-static {p3, v3, v1}, Landroidx/car/app/IAppHost$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 143
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Landroidx/car/app/serialization/Bundleable;
    .end local v3    # "_result":Landroidx/car/app/serialization/Bundleable;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Landroidx/car/app/IAppHost$Stub;->dismissAlert(I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    goto :goto_0

    .line 123
    .end local v2    # "_arg0":I
    :pswitch_3
    sget-object v2, Landroidx/car/app/serialization/Bundleable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/IAppHost$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/serialization/Bundleable;

    .line 124
    .local v2, "_arg0":Landroidx/car/app/serialization/Bundleable;
    invoke-virtual {p0, v2}, Landroidx/car/app/IAppHost$Stub;->showAlert(Landroidx/car/app/serialization/Bundleable;)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    goto :goto_0

    .line 115
    .end local v2    # "_arg0":Landroidx/car/app/serialization/Bundleable;
    :pswitch_4
    sget-object v2, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/IAppHost$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    .line 116
    .local v2, "_arg0":Landroid/location/Location;
    invoke-virtual {p0, v2}, Landroidx/car/app/IAppHost$Stub;->sendLocation(Landroid/location/Location;)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    goto :goto_0

    .line 107
    .end local v2    # "_arg0":Landroid/location/Location;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroidx/car/app/ISurfaceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/car/app/ISurfaceCallback;

    move-result-object v2

    .line 108
    .local v2, "_arg0":Landroidx/car/app/ISurfaceCallback;
    invoke-virtual {p0, v2}, Landroidx/car/app/IAppHost$Stub;->setSurfaceCallback(Landroidx/car/app/ISurfaceCallback;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    goto :goto_0

    .line 97
    .end local v2    # "_arg0":Landroidx/car/app/ISurfaceCallback;
    :pswitch_6
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Landroidx/car/app/IAppHost$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 99
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 100
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroidx/car/app/IAppHost$Stub;->showToast(Ljava/lang/CharSequence;I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    goto :goto_0

    .line 90
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":I
    :pswitch_7
    invoke-virtual {p0}, Landroidx/car/app/IAppHost$Stub;->invalidate()V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    nop

    .line 150
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
