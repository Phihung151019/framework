.class public abstract Lorg/codeaurora/internal/INetworkCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkCallback.java"

# interfaces
.implements Lorg/codeaurora/internal/INetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/internal/INetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_on5gConfigInfo:I = 0x6

.field static final blacklist TRANSACTION_on5gStatus:I = 0x1

.field static final blacklist TRANSACTION_onAnyNrBearerAllocation:I = 0x3

.field static final blacklist TRANSACTION_onEnableEndc:I = 0x8

.field static final blacklist TRANSACTION_onEndcStatus:I = 0x9

.field static final blacklist TRANSACTION_onNrConfigStatus:I = 0xb

.field static final blacklist TRANSACTION_onNrDcParam:I = 0x2

.field static final blacklist TRANSACTION_onNrIconType:I = 0x7

.field static final blacklist TRANSACTION_onSetNrConfig:I = 0xa

.field static final blacklist TRANSACTION_onSignalStrength:I = 0x5

.field static final blacklist TRANSACTION_onUpperLayerIndInfo:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 95
    const-string v0, "org.codeaurora.internal.INetworkCallback"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/internal/INetworkCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/INetworkCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 103
    if-nez p0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    const-string v0, "org.codeaurora.internal.INetworkCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 107
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/internal/INetworkCallback;

    if-eqz v1, :cond_1

    .line 108
    move-object v1, v0

    check-cast v1, Lorg/codeaurora/internal/INetworkCallback;

    return-object v1

    .line 110
    :cond_1
    new-instance v1, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lorg/codeaurora/internal/INetworkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 114
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    const-string v0, "org.codeaurora.internal.INetworkCallback"

    .line 119
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v1

    .line 126
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 277
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 279
    .local v2, "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 281
    .local v3, "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 283
    .local v4, "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/NrConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/NrConfig;

    .line 284
    .local v5, "_arg3":Lorg/codeaurora/internal/NrConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onNrConfigStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfig;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/NrConfig;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 268
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 269
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-virtual {p0, v2, v3, v4}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onSetNrConfig(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    goto/16 :goto_0

    .line 249
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 251
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 253
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 255
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 256
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onEndcStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    goto/16 :goto_0

    .line 236
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Z
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 238
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 240
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 241
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3, v4}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onEnableEndc(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;)V

    .line 243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    goto/16 :goto_0

    .line 221
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 225
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 227
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/NrIconType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/NrIconType;

    .line 228
    .local v5, "_arg3":Lorg/codeaurora/internal/NrIconType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onNrIconType(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrIconType;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    goto/16 :goto_0

    .line 206
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/NrIconType;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 210
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 212
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/NrConfigType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/NrConfigType;

    .line 213
    .local v5, "_arg3":Lorg/codeaurora/internal/NrConfigType;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->on5gConfigInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/NrConfigType;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto/16 :goto_0

    .line 191
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/NrConfigType;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 195
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 197
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/SignalStrength;

    .line 198
    .local v5, "_arg3":Lorg/codeaurora/internal/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onSignalStrength(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/SignalStrength;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto/16 :goto_0

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/SignalStrength;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 180
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 182
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/UpperLayerIndInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/UpperLayerIndInfo;

    .line 183
    .local v5, "_arg3":Lorg/codeaurora/internal/UpperLayerIndInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onUpperLayerIndInfo(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/UpperLayerIndInfo;)V

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_0

    .line 161
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/UpperLayerIndInfo;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 165
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 167
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/BearerAllocationStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/BearerAllocationStatus;

    .line 168
    .local v5, "_arg3":Lorg/codeaurora/internal/BearerAllocationStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onAnyNrBearerAllocation(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/BearerAllocationStatus;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    goto :goto_0

    .line 146
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/BearerAllocationStatus;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 148
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 150
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 152
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    sget-object v5, Lorg/codeaurora/internal/DcParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/internal/DcParam;

    .line 153
    .local v5, "_arg3":Lorg/codeaurora/internal/DcParam;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 154
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->onNrDcParam(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Lorg/codeaurora/internal/DcParam;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    goto :goto_0

    .line 131
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Lorg/codeaurora/internal/DcParam;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 133
    .restart local v2    # "_arg0":I
    sget-object v3, Lorg/codeaurora/internal/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/internal/Token;

    .line 135
    .restart local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    sget-object v4, Lorg/codeaurora/internal/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/internal/Status;

    .line 137
    .restart local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 138
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/codeaurora/internal/INetworkCallback$Stub;->on5gStatus(ILorg/codeaurora/internal/Token;Lorg/codeaurora/internal/Status;Z)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    nop

    .line 294
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lorg/codeaurora/internal/Token;
    .end local v4    # "_arg2":Lorg/codeaurora/internal/Status;
    .end local v5    # "_arg3":Z
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
