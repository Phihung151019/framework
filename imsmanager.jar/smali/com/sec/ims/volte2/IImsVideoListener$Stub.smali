.class public abstract Lcom/sec/ims/volte2/IImsVideoListener$Stub;
.super Landroid/os/Binder;
.source "IImsVideoListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsVideoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallDownGraded:I = 0xb

.field static final TRANSACTION_onCameraEvent:I = 0x2

.field static final TRANSACTION_onCameraFirstFrameReady:I = 0x3

.field static final TRANSACTION_onCameraStopEvent:I = 0x8

.field static final TRANSACTION_onCameraSwitchFailure:I = 0x7

.field static final TRANSACTION_onCameraSwitchSuccess:I = 0x6

.field static final TRANSACTION_onCaptureFailure:I = 0x5

.field static final TRANSACTION_onCaptureSuccess:I = 0x4

.field static final TRANSACTION_onNoFarFrame:I = 0xc

.field static final TRANSACTION_onRecordEvent:I = 0xe

.field static final TRANSACTION_onVideoAttemped:I = 0xd

.field static final TRANSACTION_onVideoAvailable:I = 0x1

.field static final TRANSACTION_onVideoHeld:I = 0x9

.field static final TRANSACTION_onVideoResumed:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 69
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsVideoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_0
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    instance-of v1, v0, Lcom/sec/ims/volte2/IImsVideoListener;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Lcom/sec/ims/volte2/IImsVideoListener;

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/volte2/IImsVideoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 93
    const-string v0, "com.sec.ims.volte2.IImsVideoListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 94
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 97
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 234
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 223
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-interface {p0, p1, p3, p4}, Lcom/sec/ims/volte2/IImsVideoListener;->onRecordEvent(IZZ)V

    goto/16 :goto_0

    .line 215
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onVideoAttemped(I)V

    goto/16 :goto_0

    .line 207
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onNoFarFrame(I)V

    goto/16 :goto_0

    .line 199
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onCallDownGraded(I)V

    goto/16 :goto_0

    .line 191
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onVideoResumed(I)V

    goto/16 :goto_0

    .line 183
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onVideoHeld(I)V

    goto/16 :goto_0

    .line 173
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-interface {p0, p1, p3}, Lcom/sec/ims/volte2/IImsVideoListener;->onCameraStopEvent(IZ)V

    goto :goto_0

    .line 163
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-interface {p0, p1, p3}, Lcom/sec/ims/volte2/IImsVideoListener;->onCameraSwitchFailure(II)V

    goto :goto_0

    .line 153
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-interface {p0, p1, p3}, Lcom/sec/ims/volte2/IImsVideoListener;->onCameraSwitchSuccess(II)V

    goto :goto_0

    .line 143
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    invoke-interface {p0, p1, p3}, Lcom/sec/ims/volte2/IImsVideoListener;->onCaptureFailure(IZ)V

    goto :goto_0

    .line 131
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-interface {p0, p1, p3, p4}, Lcom/sec/ims/volte2/IImsVideoListener;->onCaptureSuccess(IZLjava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onCameraFirstFrameReady(I)V

    goto :goto_0

    .line 113
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-interface {p0, p1, p3}, Lcom/sec/ims/volte2/IImsVideoListener;->onCameraEvent(IZ)V

    goto :goto_0

    .line 105
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsVideoListener;->onVideoAvailable(I)V

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
