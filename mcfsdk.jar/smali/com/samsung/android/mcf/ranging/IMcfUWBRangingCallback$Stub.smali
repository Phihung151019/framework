.class public abstract Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;
.super Landroid/os/Binder;
.source "IMcfUWBRangingCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConfirmed:I = 0x6

.field static final TRANSACTION_onDataReceived:I = 0x1

.field static final TRANSACTION_onDeviceDiscovered:I = 0x4

.field static final TRANSACTION_onStatusChanged:I = 0x2

.field static final TRANSACTION_onStatusError:I = 0x3

.field static final TRANSACTION_onUWBParamChanged:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 53
    if-nez p0, :cond_0

    .line 54
    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 57
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    if-eqz v1, :cond_1

    .line 58
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    return-object v1

    .line 60
    :cond_1
    new-instance v1, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 64
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 69
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 73
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return v1

    .line 76
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 122
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 124
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 125
    .local v3, "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onConfirmed(I[B)V

    .line 126
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 116
    .restart local v3    # "_arg1":[B
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onUWBParamChanged(Ljava/lang/String;[B)V

    .line 117
    goto :goto_0

    .line 106
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":[B
    :pswitch_2
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 107
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onDeviceDiscovered(Landroid/os/PersistableBundle;)V

    .line 108
    goto :goto_0

    .line 99
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onStatusError(I)V

    .line 101
    goto :goto_0

    .line 88
    .end local v2    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 92
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 93
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onStatusChanged(IILjava/lang/String;)V

    .line 94
    goto :goto_0

    .line 81
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_5
    sget-object v2, Lcom/samsung/android/mcf/ranging/McfUWBRangingData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/android/mcf/ranging/McfUWBRangingData;

    .line 82
    .local v2, "_arg0":[Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V

    .line 83
    nop

    .line 133
    .end local v2    # "_arg0":[Lcom/samsung/android/mcf/ranging/McfUWBRangingData;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
