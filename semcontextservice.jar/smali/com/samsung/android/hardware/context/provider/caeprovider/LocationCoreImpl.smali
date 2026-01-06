.class public Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;
.super Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;
.source "LocationCoreImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemContext.CaeProvider.LocationCoreImpl"


# instance fields
.field private final mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 51
    const/16 v0, 0x2f

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;-><init>(Landroid/content/Context;ILcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 52
    invoke-super {p0}, Lcom/samsung/android/hardware/context/provider/caeprovider/CaeProvider;->getManager()Lcom/samsung/android/contextaware/ContextAwareManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    .line 53
    return-void
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .param p1, "context"    # Landroid/os/Bundle;

    .line 267
    const-string v0, "SemContext.CaeProvider.LocationCoreImpl"

    if-eqz p1, :cond_0

    .line 268
    const-string v1, "DataType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Action"

    const-string v7, "Mode"

    packed-switch v1, :pswitch_data_0

    .line 308
    :pswitch_0
    const-string v1, "Please check Mode, Action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    goto :goto_0

    .line 298
    :pswitch_1
    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    const/16 v0, 0xa

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    goto :goto_0

    .line 294
    :pswitch_2
    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 295
    const/4 v0, 0x6

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    goto :goto_0

    .line 290
    :pswitch_3
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const/4 v0, 0x5

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    goto :goto_0

    .line 286
    :pswitch_4
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 287
    const/4 v0, 0x4

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 288
    goto :goto_0

    .line 282
    :pswitch_5
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    invoke-virtual {p1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    goto :goto_0

    .line 278
    :pswitch_6
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 279
    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 280
    goto :goto_0

    .line 274
    :pswitch_7
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    goto :goto_0

    .line 270
    :pswitch_8
    invoke-virtual {p1, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 271
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    goto :goto_0

    .line 312
    :cond_0
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAttribute(ILcom/samsung/android/hardware/context/SemContextAttribute;)V
    .locals 21
    .param p1, "service"    # I
    .param p2, "attribute"    # Lcom/samsung/android/hardware/context/SemContextAttribute;

    .line 58
    move-object/from16 v0, p0

    const/16 v1, 0x2f

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Lcom/samsung/android/hardware/context/SemContextAttribute;->getAttribute(I)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "SemContext.CaeProvider.LocationCoreImpl"

    if-nez v1, :cond_0

    .line 60
    const-string v4, "setAttribute() : attribute is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 63
    :cond_0
    const-string v4, "Mode"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 64
    .local v4, "mode":I
    const-string v5, "Action"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 70
    .local v5, "action":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setAttribute() mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v6, "DoubleType"

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v11, 0x2

    const-string v12, "IntType"

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v4, :cond_7

    .line 72
    const/16 v15, 0x67

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_1

    .line 144
    :sswitch_0
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 145
    .local v6, "intType":[I
    if-nez v6, :cond_1

    .line 146
    const-string v7, "ACTION_SEND_EXTRA_CMD: intType is null!"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void

    .line 149
    :cond_1
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    const/16 v8, 0x76

    invoke-virtual {v3, v7, v8, v6}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    goto/16 :goto_1

    .line 140
    .end local v6    # "intType":[I
    :sswitch_1
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    const/16 v7, 0x6d

    invoke-virtual {v3, v6, v7, v14}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 142
    goto/16 :goto_3

    .line 136
    :sswitch_2
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    const/16 v7, 0x6b

    invoke-virtual {v3, v6, v7, v14}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 138
    goto/16 :goto_3

    .line 129
    :sswitch_3
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 130
    .local v3, "intType":[I
    if-nez v3, :cond_2

    return-void

    .line 131
    :cond_2
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    aget v8, v3, v14

    aget v9, v3, v13

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const/16 v9, 0x6a

    invoke-virtual {v6, v7, v9, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 134
    goto/16 :goto_3

    .line 121
    .end local v3    # "intType":[I
    :sswitch_4
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 122
    .restart local v3    # "intType":[I
    if-nez v3, :cond_3

    return-void

    .line 123
    :cond_3
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    aget v8, v3, v14

    aget v9, v3, v13

    aget v10, v3, v11

    filled-new-array {v8, v9, v10}, [I

    move-result-object v8

    const/16 v9, 0x68

    invoke-virtual {v6, v7, v9, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 126
    goto/16 :goto_3

    .line 115
    .end local v3    # "intType":[I
    :sswitch_5
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v3, v6, v15, v7}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 118
    goto/16 :goto_3

    .line 110
    :sswitch_6
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v3, v6, v15, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 113
    goto/16 :goto_3

    .line 105
    :sswitch_7
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v3, v6, v15, v11}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 108
    goto/16 :goto_3

    .line 100
    :sswitch_8
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v6, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v3, v6, v15, v13}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 103
    goto/16 :goto_3

    .line 93
    :sswitch_9
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 94
    .restart local v3    # "intType":[I
    if-nez v3, :cond_4

    return-void

    .line 95
    :cond_4
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    const/16 v8, 0x66

    aget v9, v3, v14

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 98
    goto/16 :goto_3

    .line 82
    .end local v3    # "intType":[I
    :sswitch_a
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 84
    .restart local v3    # "intType":[I
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v6

    .line 85
    .local v6, "doubleType":[D
    if-eqz v3, :cond_6

    if-nez v6, :cond_5

    goto :goto_0

    .line 86
    :cond_5
    iget-object v7, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v12, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    aget v15, v3, v14

    aget-wide v16, v6, v14

    const-wide v18, 0x416312d000000000L    # 1.0E7

    mul-double v9, v16, v18

    double-to-int v9, v9

    aget-wide v16, v6, v13

    move v10, v8

    move v14, v9

    mul-double v8, v16, v18

    double-to-int v8, v8

    aget v18, v3, v13

    aget v19, v3, v11

    aget v20, v3, v10

    move/from16 v17, v8

    move/from16 v16, v14

    filled-new-array/range {v15 .. v20}, [I

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v7, v12, v9, v8}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 90
    goto/16 :goto_3

    .line 85
    :cond_6
    :goto_0
    return-void

    .line 152
    .end local v3    # "intType":[I
    .end local v6    # "doubleType":[D
    :goto_1
    goto/16 :goto_3

    .line 154
    :cond_7
    move v10, v8

    const-wide v18, 0x416312d000000000L    # 1.0E7

    if-ne v4, v13, :cond_a

    .line 155
    const/16 v3, 0x6c

    packed-switch v5, :pswitch_data_0

    .line 190
    :pswitch_0
    goto :goto_3

    .line 185
    :pswitch_1
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v8, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v6, v8, v3, v7}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 188
    goto :goto_3

    .line 180
    :pswitch_2
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v6, v7, v3, v10}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 183
    goto :goto_3

    .line 175
    :pswitch_3
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v6, v7, v3, v11}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 178
    goto :goto_3

    .line 170
    :pswitch_4
    iget-object v6, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v7, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    invoke-virtual {v6, v7, v3, v13}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(III)Z

    .line 173
    goto :goto_3

    .line 158
    :pswitch_5
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 160
    .restart local v3    # "intType":[I
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v6

    .line 162
    .restart local v6    # "doubleType":[D
    const-string v8, "LongType"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 163
    .local v8, "longType":[J
    if-eqz v3, :cond_9

    if-eqz v6, :cond_9

    if-nez v8, :cond_8

    goto :goto_2

    .line 164
    :cond_8
    iget-object v9, v0, Lcom/samsung/android/hardware/context/provider/caeprovider/LocationCoreImpl;->mContextAwareManager:Lcom/samsung/android/contextaware/ContextAwareManager;

    sget v10, Lcom/samsung/android/contextaware/ContextAwareManager;->SLOCATION_SERVICE:I

    aget-wide v11, v8, v14

    ushr-long/2addr v11, v7

    long-to-int v7, v11

    aget-wide v11, v8, v14

    const-wide/16 v15, -0x1

    and-long/2addr v11, v15

    long-to-int v11, v11

    aget-wide v15, v6, v14

    move v12, v13

    move/from16 v17, v14

    mul-double v13, v15, v18

    double-to-int v13, v13

    aget-wide v14, v6, v12

    mul-double v14, v14, v18

    double-to-int v12, v14

    aget v14, v3, v17

    filled-new-array {v7, v11, v13, v12, v14}, [I

    move-result-object v7

    const/16 v11, 0x69

    invoke-virtual {v9, v10, v11, v7}, Lcom/samsung/android/contextaware/ContextAwareManager;->setCAProperty(II[I)Z

    .line 168
    goto :goto_3

    .line 163
    :cond_9
    :goto_2
    return-void

    .line 255
    .end local v3    # "intType":[I
    .end local v6    # "doubleType":[D
    .end local v8    # "longType":[J
    :cond_a
    const-string v6, "mode or action value is wrong!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_a
        0x2 -> :sswitch_9
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x7 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xf -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
