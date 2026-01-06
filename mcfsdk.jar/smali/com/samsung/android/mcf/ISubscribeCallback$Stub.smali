.class public abstract Lcom/samsung/android/mcf/ISubscribeCallback$Stub;
.super Landroid/os/Binder;
.source "ISubscribeCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ISubscribeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ISubscribeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnectionFailed:I = 0x9

.field static final TRANSACTION_onConnectionStateChanged:I = 0x8

.field static final TRANSACTION_onDiscoveryStarted:I = 0x1

.field static final TRANSACTION_onDiscoveryStopped:I = 0x2

.field static final TRANSACTION_onHandoverResult:I = 0xa

.field static final TRANSACTION_onHandoverStarted:I = 0x3

.field static final TRANSACTION_onHandoverStopped:I = 0x4

.field static final TRANSACTION_onMcfServiceStateChanged:I = 0xb

.field static final TRANSACTION_onPilotAdvertiseStarted:I = 0x5

.field static final TRANSACTION_onPilotAdvertiseStopped:I = 0x6

.field static final TRANSACTION_onReceiveHandoverResponse:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 60
    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mcf/ISubscribeCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/mcf/ISubscribeCallback;

    if-eqz v1, :cond_1

    .line 73
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/mcf/ISubscribeCallback;

    return-object v1

    .line 75
    :cond_1
    new-instance v1, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 79
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

    .line 83
    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    .line 84
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return v1

    .line 91
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 174
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 176
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 177
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onMcfServiceStateChanged(II)V

    .line 178
    goto/16 :goto_0

    .line 165
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 167
    .local v2, "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 168
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onHandoverResult(Landroid/os/PersistableBundle;I)V

    .line 169
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 158
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 159
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onConnectionFailed(Landroid/os/PersistableBundle;I)V

    .line 160
    goto :goto_0

    .line 147
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 149
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V

    .line 151
    goto :goto_0

    .line 138
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_4
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 140
    .restart local v2    # "_arg0":Landroid/os/PersistableBundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V

    .line 142
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":Landroid/os/PersistableBundle;
    .end local v3    # "_arg1":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onPilotAdvertiseStopped(I)V

    .line 133
    goto :goto_0

    .line 124
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 125
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onPilotAdvertiseStarted(I)V

    .line 126
    goto :goto_0

    .line 117
    .end local v2    # "_arg0":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onHandoverStopped(I)V

    .line 119
    goto :goto_0

    .line 110
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 111
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onHandoverStarted(I)V

    .line 112
    goto :goto_0

    .line 103
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onDiscoveryStopped(I)V

    .line 105
    goto :goto_0

    .line 96
    .end local v2    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->onDiscoveryStarted(I)V

    .line 98
    nop

    .line 185
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
