.class public abstract Lcom/sec/ims/ss/IUtService$Stub;
.super Landroid/os/Binder;
.source "IUtService.java"

# interfaces
.implements Lcom/sec/ims/ss/IUtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/IUtService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ss/IUtService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deRegisterForUtEvent:I = 0x2

.field static final TRANSACTION_isUtEnabled:I = 0x11

.field static final TRANSACTION_queryCLIP:I = 0x7

.field static final TRANSACTION_queryCLIR:I = 0x6

.field static final TRANSACTION_queryCOLP:I = 0x9

.field static final TRANSACTION_queryCOLR:I = 0x8

.field static final TRANSACTION_queryCallBarring:I = 0x3

.field static final TRANSACTION_queryCallForward:I = 0x4

.field static final TRANSACTION_queryCallWaiting:I = 0x5

.field static final TRANSACTION_registerForUtEvent:I = 0x1

.field static final TRANSACTION_updateCLIP:I = 0xe

.field static final TRANSACTION_updateCLIR:I = 0xd

.field static final TRANSACTION_updateCOLP:I = 0x10

.field static final TRANSACTION_updateCOLR:I = 0xf

.field static final TRANSACTION_updateCallBarring:I = 0xa

.field static final TRANSACTION_updateCallForward:I = 0xb

.field static final TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 93
    const-string v0, "com.sec.ims.ss.IUtService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IUtService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 104
    :cond_0
    const-string v0, "com.sec.ims.ss.IUtService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 105
    instance-of v1, v0, Lcom/sec/ims/ss/IUtService;

    if-eqz v1, :cond_1

    .line 106
    check-cast v0, Lcom/sec/ims/ss/IUtService;

    return-object v0

    .line 108
    :cond_1
    new-instance v0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/ims/ss/IUtService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    const-string v0, "com.sec.ims.ss.IUtService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 118
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 121
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 340
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 331
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-interface {p0, p1}, Lcom/sec/ims/ss/IUtService;->isUtEnabled(I)Z

    move-result p0

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    .line 319
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->updateCOLP(IZ)I

    move-result p0

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->updateCOLR(II)I

    move-result p0

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 295
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->updateCLIP(IZ)I

    move-result p0

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 283
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-interface {p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->updateCLIR(II)I

    move-result p0

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 269
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-interface {p0, p1, p4, v0}, Lcom/sec/ims/ss/IUtService;->updateCallWaiting(IZI)I

    move-result p0

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 249
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 261
    invoke-interface/range {v2 .. v8}, Lcom/sec/ims/ss/IUtService;->updateCallForward(IIILjava/lang/String;II)I

    move-result p0

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_7
    move-object v2, p0

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-interface/range {v2 .. v8}, Lcom/sec/ims/ss/IUtService;->updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_8
    move-object v2, p0

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 221
    invoke-interface {v2, p0}, Lcom/sec/ims/ss/IUtService;->queryCOLP(I)I

    move-result p0

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_9
    move-object v2, p0

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-interface {v2, p0}, Lcom/sec/ims/ss/IUtService;->queryCOLR(I)I

    move-result p0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_a
    move-object v2, p0

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 201
    invoke-interface {v2, p0}, Lcom/sec/ims/ss/IUtService;->queryCLIP(I)I

    move-result p0

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_b
    move-object v2, p0

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-interface {v2, p0}, Lcom/sec/ims/ss/IUtService;->queryCLIR(I)I

    move-result p0

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_c
    move-object v2, p0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-interface {v2, p0}, Lcom/sec/ims/ss/IUtService;->queryCallWaiting(I)I

    move-result p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_d
    move-object v2, p0

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 171
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->queryCallForward(IILjava/lang/String;)I

    move-result p0

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_e
    move-object v2, p0

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-interface {v2, p0, p1, p4}, Lcom/sec/ims/ss/IUtService;->queryCallBarring(III)I

    move-result p0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_f
    move-object v2, p0

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IImsUtEventListener;

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ss/IUtService;->deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_10
    move-object v2, p0

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/ss/IImsUtEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ss/IImsUtEventListener;

    move-result-object p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-interface {v2, p0, p1}, Lcom/sec/ims/ss/IUtService;->registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
