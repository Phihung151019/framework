.class public abstract Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onDeinitialized:I = 0x4

.field static final TRANSACTION_onEngineResult:I = 0x5

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_onInitialized:I = 0x3

.field static final TRANSACTION_onProcessCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    const-string v0, "com.samsung.android.camerasdkservice.ICameraServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 v0, 0x0

    return-object v0

    .line 53
    :cond_0
    const-string v0, "com.samsung.android.camerasdkservice.ICameraServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;

    if-eqz v1, :cond_1

    .line 55
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback;

    return-object v1

    .line 57
    :cond_1
    new-instance v1, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
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

    .line 65
    const-string v0, "com.samsung.android.camerasdkservice.ICameraServiceCallback"

    .line 66
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 73
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 116
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .local v2, "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 119
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->onEngineResult(ILandroid/os/Bundle;)V

    .line 121
    goto :goto_0

    .line 108
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 110
    invoke-virtual {p0, v2}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->onDeinitialized(I)V

    .line 111
    goto :goto_0

    .line 100
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-virtual {p0, v2}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->onInitialized(I)V

    .line 103
    goto :goto_0

    .line 88
    .end local v2    # "_arg0":I
    :pswitch_3
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
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 94
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->onError(IILjava/lang/String;)V

    .line 95
    goto :goto_0

    .line 78
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2    # "_arg0":I
    sget-object v3, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;

    .line 81
    .local v3, "_arg1":Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/camerasdkservice/ICameraServiceCallback$Stub;->onProcessCompleted(ILcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;)V

    .line 83
    nop

    .line 128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/camerasdkservice/data/SharedMemoryInfo;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
