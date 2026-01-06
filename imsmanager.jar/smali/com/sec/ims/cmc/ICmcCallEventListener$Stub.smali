.class public abstract Lcom/sec/ims/cmc/ICmcCallEventListener$Stub;
.super Landroid/os/Binder;
.source "ICmcCallEventListener.java"

# interfaces
.implements Lcom/sec/ims/cmc/ICmcCallEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/ICmcCallEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/ICmcCallEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onCallEnded:I = 0x6

.field static final TRANSACTION_onCallError:I = 0x7

.field static final TRANSACTION_onCallEstablished:I = 0x5

.field static final TRANSACTION_onCallHeld:I = 0x8

.field static final TRANSACTION_onCallRecording:I = 0xa

.field static final TRANSACTION_onCallResumed:I = 0x9

.field static final TRANSACTION_onCallRingingBack:I = 0x3

.field static final TRANSACTION_onCalling:I = 0x2

.field static final TRANSACTION_onEarlyMediaStarted:I = 0x4

.field static final TRANSACTION_onIncomingCall:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 121
    const-string v0, "com.sec.ims.cmc.ICmcCallEventListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/cmc/ICmcCallEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    const-string v0, "com.sec.ims.cmc.ICmcCallEventListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    instance-of v1, v0, Lcom/sec/ims/cmc/ICmcCallEventListener;

    if-eqz v1, :cond_1

    .line 134
    check-cast v0, Lcom/sec/ims/cmc/ICmcCallEventListener;

    return-object v0

    .line 136
    :cond_1
    new-instance v0, Lcom/sec/ims/cmc/ICmcCallEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/ICmcCallEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 145
    const-string v0, "com.sec.ims.cmc.ICmcCallEventListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 146
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 149
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 242
    :pswitch_0
    sget-object p1, Lcom/sec/ims/cmc/CmcRecordEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcRecordEventInfo;

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallRecording(Lcom/sec/ims/cmc/CmcRecordEventInfo;)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 231
    :pswitch_1
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallResumed(Lcom/sec/ims/cmc/CmcCallEventInfo;I)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 220
    :pswitch_2
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallHeld(Lcom/sec/ims/cmc/CmcCallEventInfo;I)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 211
    :pswitch_3
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallError(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 202
    :pswitch_4
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallEnded(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 193
    :pswitch_5
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallEstablished(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 184
    :pswitch_6
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onEarlyMediaStarted(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 175
    :pswitch_7
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCallRingingBack(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 166
    :pswitch_8
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onCalling(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 157
    :pswitch_9
    sget-object p1, Lcom/sec/ims/cmc/CmcCallEventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/cmc/CmcCallEventInfo;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-interface {p0, p1}, Lcom/sec/ims/cmc/ICmcCallEventListener;->onIncomingCall(Lcom/sec/ims/cmc/CmcCallEventInfo;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
