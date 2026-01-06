.class public abstract Lcom/qualcomm/qti/IPerfManager$Stub;
.super Landroid/os/Binder;
.source "IPerfManager.java"

# interfaces
.implements Lcom/qualcomm/qti/IPerfManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/IPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/IPerfManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getPerfHalVer:I = 0xc

.field static final blacklist TRANSACTION_perfEvent:I = 0x9

.field static final blacklist TRANSACTION_perfGetFeedbackExtn:I = 0x8

.field static final blacklist TRANSACTION_perfHint:I = 0x3

.field static final blacklist TRANSACTION_perfHintAcqRel:I = 0xa

.field static final blacklist TRANSACTION_perfHintRenew:I = 0xb

.field static final blacklist TRANSACTION_perfLockAcqAndRelease:I = 0x7

.field static final blacklist TRANSACTION_perfLockAcquire:I = 0x4

.field static final blacklist TRANSACTION_perfLockRelease:I = 0x1

.field static final blacklist TRANSACTION_perfLockReleaseHandler:I = 0x2

.field static final blacklist TRANSACTION_perfUXEngine_events:I = 0x5

.field static final blacklist TRANSACTION_setClientBinder:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    const-string v0, "com.qualcomm.qti.IPerfManager"

    invoke-virtual {p0, p0, v0}, Lcom/qualcomm/qti/IPerfManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/IPerfManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    const-string v0, "com.qualcomm.qti.IPerfManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/qualcomm/qti/IPerfManager;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Lcom/qualcomm/qti/IPerfManager;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lcom/qualcomm/qti/IPerfManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/qualcomm/qti/IPerfManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    move/from16 v9, p1

    move-object/from16 v10, p3

    const-string v11, "com.qualcomm.qti.IPerfManager"

    .line 98
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v9, v12, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 99
    move-object/from16 v13, p2

    invoke-virtual {v13, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v13, p2

    .line 101
    :goto_0
    const v0, 0x5f4e5446

    if-ne v9, v0, :cond_1

    .line 102
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v12

    .line 105
    :cond_1
    packed-switch v9, :pswitch_data_0

    .line 292
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 285
    :pswitch_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/IPerfManager$Stub;->getPerfHalVer()D

    move-result-wide v0

    .line 286
    .local v0, "_result":D
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 288
    goto/16 :goto_1

    .line 262
    .end local v0    # "_result":D
    :pswitch_1
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 270
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 272
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 274
    .local v6, "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 276
    .local v7, "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 277
    .local v8, "_arg7":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfHintRenew(IILjava/lang/String;IIII[I)I

    move-result v14

    .line 279
    .local v14, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    goto/16 :goto_1

    .line 238
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":[I
    .end local v14    # "_result":I
    :pswitch_2
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 240
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 246
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 248
    .restart local v5    # "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 250
    .restart local v6    # "_arg5":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 252
    .restart local v7    # "_arg6":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 253
    .restart local v8    # "_arg7":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfHintAcqRel(IILjava/lang/String;IIII[I)I

    move-result v14

    .line 255
    .restart local v14    # "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v10, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    goto/16 :goto_1

    .line 221
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":[I
    .end local v14    # "_result":I
    :pswitch_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 223
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 229
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 230
    .local v5, "_arg4":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfEvent(ILjava/lang/String;II[I)V

    .line 232
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    goto/16 :goto_1

    .line 203
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[I
    :pswitch_4
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 205
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 211
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 212
    .restart local v5    # "_arg4":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfGetFeedbackExtn(ILjava/lang/String;II[I)I

    move-result v6

    .line 214
    .local v6, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    goto/16 :goto_1

    .line 185
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[I
    .end local v6    # "_result":I
    :pswitch_5
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 193
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 194
    .restart local v5    # "_arg4":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfLockAcqAndRelease(IIII[I)I

    move-result v6

    .line 196
    .restart local v6    # "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto/16 :goto_1

    .line 175
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":[I
    .end local v6    # "_result":I
    :pswitch_6
    invoke-virtual {v13}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 176
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/IPerfManager$Stub;->setClientBinder(Landroid/os/IBinder;)I

    move-result v2

    .line 178
    .local v2, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    goto/16 :goto_1

    .line 159
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 163
    .local v2, "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 166
    .restart local v4    # "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfUXEngine_events(IILjava/lang/String;I)I

    move-result v5

    .line 168
    .local v5, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    goto :goto_1

    .line 145
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    .end local v5    # "_result":I
    :pswitch_8
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 149
    .restart local v2    # "_arg1":I
    invoke-virtual {v13}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 150
    .local v3, "_arg2":[I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, v1, v2, v3}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfLockAcquire(II[I)I

    move-result v4

    .line 152
    .local v4, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    goto :goto_1

    .line 127
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":[I
    .end local v4    # "_result":I
    :pswitch_9
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 133
    .local v3, "_arg2":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 135
    .local v4, "_arg3":I
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 136
    .local v5, "_arg4":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfHint(ILjava/lang/String;III)I

    move-result v6

    .line 138
    .restart local v6    # "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    goto :goto_1

    .line 117
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_result":I
    :pswitch_a
    invoke-virtual {v13}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 118
    .restart local v1    # "_arg0":I
    invoke-virtual {v13}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 119
    invoke-virtual {p0, v1}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfLockReleaseHandler(I)I

    move-result v2

    .line 120
    .local v2, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    goto :goto_1

    .line 109
    .end local v1    # "_arg0":I
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Lcom/qualcomm/qti/IPerfManager$Stub;->perfLockRelease()I

    move-result v1

    .line 110
    .local v1, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    nop

    .line 295
    .end local v1    # "_result":I
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
