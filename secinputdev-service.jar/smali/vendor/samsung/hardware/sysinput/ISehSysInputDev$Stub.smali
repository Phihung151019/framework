.class public abstract Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;
.super Landroid/os/Binder;
.source "ISehSysInputDev.java"

# interfaces
.implements Lvendor/samsung/hardware/sysinput/ISehSysInputDev;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_activate:I = 0x5

.field static final TRANSACTION_getDeviceList:I = 0x1

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getKeyState:I = 0x9

.field static final TRANSACTION_getProperty:I = 0x8

.field static final TRANSACTION_injectRawdata:I = 0x4

.field static final TRANSACTION_readTaas:I = 0xa

.field static final TRANSACTION_registerCallback:I = 0x2

.field static final TRANSACTION_runCommand:I = 0x6

.field static final TRANSACTION_setProperty:I = 0x7

.field static final TRANSACTION_streamRawdata:I = 0x3

.field static final TRANSACTION_writeTaas:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 84
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->markVintfStability()V

    .line 85
    sget-object v0, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/sysinput/ISehSysInputDev;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    sget-object v0, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 97
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    if-eqz v1, :cond_1

    .line 98
    move-object v1, v0

    check-cast v1, Lvendor/samsung/hardware/sysinput/ISehSysInputDev;

    return-object v1

    .line 100
    :cond_1
    new-instance v1, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 109
    sparse-switch p0, :sswitch_data_0

    .line 165
    const/4 v0, 0x0

    return-object v0

    .line 157
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 161
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 153
    :sswitch_2
    const-string v0, "writeTaas"

    return-object v0

    .line 149
    :sswitch_3
    const-string v0, "readTaas"

    return-object v0

    .line 145
    :sswitch_4
    const-string v0, "getKeyState"

    return-object v0

    .line 141
    :sswitch_5
    const-string v0, "getProperty"

    return-object v0

    .line 137
    :sswitch_6
    const-string v0, "setProperty"

    return-object v0

    .line 133
    :sswitch_7
    const-string v0, "runCommand"

    return-object v0

    .line 129
    :sswitch_8
    const-string v0, "activate"

    return-object v0

    .line 125
    :sswitch_9
    const-string v0, "injectRawdata"

    return-object v0

    .line 121
    :sswitch_a
    const-string v0, "streamRawdata"

    return-object v0

    .line 117
    :sswitch_b
    const-string v0, "registerCallback"

    return-object v0

    .line 113
    :sswitch_c
    const-string v0, "getDeviceList"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_b
        0x3 -> :sswitch_a
        0x4 -> :sswitch_9
        0x5 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0x9 -> :sswitch_4
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 104
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 642
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 172
    invoke-static {p1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 176
    sget-object v0, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 177
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 178
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return v2

    .line 184
    :cond_1
    if-ne p1, v1, :cond_2

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return v2

    .line 189
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p0}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    return v2

    .line 194
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 330
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 321
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->writeTaas(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    goto/16 :goto_0

    .line 311
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_1
    new-instance v1, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v1}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 312
    .local v1, "_arg0":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->readTaas(Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 316
    goto/16 :goto_0

    .line 299
    .end local v1    # "_arg0":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "_arg0":I
    new-instance v3, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v3}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 302
    .local v3, "_arg1":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getKeyState(ILvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 306
    goto/16 :goto_0

    .line 287
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 290
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getProperty(II)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    goto/16 :goto_0

    .line 273
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 277
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->setProperty(IILjava/lang/String;)I

    move-result v5

    .line 280
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    goto/16 :goto_0

    .line 259
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 261
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "_arg1":Ljava/lang/String;
    new-instance v4, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;

    invoke-direct {v4}, Lvendor/samsung/hardware/sysinput/SehIntStringParcel;-><init>()V

    .line 264
    .local v4, "_arg2":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->runCommand(ILjava/lang/String;Lvendor/samsung/hardware/sysinput/SehIntStringParcel;)V

    .line 266
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 268
    goto :goto_0

    .line 245
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lvendor/samsung/hardware/sysinput/SehIntStringParcel;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 249
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 250
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->activate(IIZ)I

    move-result v5

    .line 252
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    goto :goto_0

    .line 231
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 233
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 235
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 236
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v1, v3, v4}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->injectRawdata(I[II)I

    move-result v5

    .line 238
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 239
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    goto :goto_0

    .line 219
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 221
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v1, v3}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->streamRawdata(II)I

    move-result v4

    .line 224
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    goto :goto_0

    .line 209
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;

    move-result-object v1

    .line 210
    .local v1, "_arg0":Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->registerCallback(Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;)I

    move-result v3

    .line 212
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    goto :goto_0

    .line 199
    .end local v1    # "_arg0":Lvendor/samsung/hardware/sysinput/ISehSysInputCallback;
    .end local v3    # "_result":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 200
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-virtual {p0, v1}, Lvendor/samsung/hardware/sysinput/ISehSysInputDev$Stub;->getDeviceList(Z)[I

    move-result-object v3

    .line 202
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 204
    nop

    .line 333
    .end local v1    # "_arg0":Z
    .end local v3    # "_result":[I
    :goto_0
    return v2

    nop

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
