.class public abstract Lcom/samsung/android/mcf/ICasterCallback$Stub;
.super Landroid/os/Binder;
.source "ICasterCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ICasterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ICasterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onAdvertiseStarted:I = 0x1

.field static final TRANSACTION_onAdvertiseStopped:I = 0x2

.field static final TRANSACTION_onConnectionFailed:I = 0x6

.field static final TRANSACTION_onConnectionStateChanged:I = 0x5

.field static final TRANSACTION_onHandoverRequest:I = 0x4

.field static final TRANSACTION_onHandoverResult:I = 0x7

.field static final TRANSACTION_onMcfServiceStateChanged:I = 0x8

.field static final TRANSACTION_onPilotScanResult:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 54
    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ICasterCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 62
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x0

    return-object v0

    .line 65
    :cond_0
    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 66
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/mcf/ICasterCallback;

    if-eqz v1, :cond_1

    .line 67
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcf/ICasterCallback;

    return-object v1

    .line 69
    :cond_1
    new-instance v1, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 73
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

    .line 77
    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    .line 78
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 79
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 82
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    return v1

    .line 85
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 151
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onMcfServiceStateChanged(II)V

    .line 155
    goto :goto_0

    .line 142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 144
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 145
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    .line 146
    goto :goto_0

    .line 133
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 135
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 136
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    .line 137
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 126
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 127
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    .line 128
    goto :goto_0

    .line 113
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 115
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v3}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 117
    .local v3, "_arg1":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 118
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onHandoverRequest(ILandroid/os/PersistableBundle;I)V

    .line 119
    goto :goto_0

    .line 104
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/PersistableBundle;
    .end local v4    # "_arg2":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onPilotScanResult(Ljava/lang/String;I)V

    .line 108
    goto :goto_0

    .line 97
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 98
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onAdvertiseStopped(I)V

    .line 99
    goto :goto_0

    .line 90
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 91
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->onAdvertiseStarted(I)V

    .line 92
    nop

    .line 162
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
