.class public final Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
.super Ljava/lang/Object;
.source "AppConfigParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAppConfigSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    .line 437
    return-void
.end method


# virtual methods
.method public build()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/uwb/support/data/param/TlvParam;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setChannelNumber(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "channelNumber"    # B

    .line 452
    const/4 v0, 0x4

    .line 453
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 455
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 456
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 457
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 459
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/ChannelNumber;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/ChannelNumber;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 460
    return-object p0
.end method

.method public setDeviceMacAddress(S)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "deviceMacAddress"    # S

    .line 464
    const/4 v0, 0x6

    .line 465
    .local v0, "tag":B
    const/4 v1, 0x2

    .line 467
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 468
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 469
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 471
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 472
    return-object p0
.end method

.method public setDeviceRole(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "deviceRole"    # B

    .line 536
    const/16 v0, 0x11

    .line 537
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 539
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 540
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 541
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 543
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DeviceRole;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceRole;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 544
    return-object p0
.end method

.method public setDeviceType(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "deviceType"    # B

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 443
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 444
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 445
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 447
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DeviceType;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceType;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 448
    return-object p0
.end method

.method public setDstMacAddress(S)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "dstMacAddress"    # S

    .line 488
    const/4 v0, 0x7

    .line 489
    .local v0, "tag":B
    const/4 v1, 0x2

    .line 491
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 492
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 493
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 495
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 496
    return-object p0
.end method

.method public setExtendedDeviceMacAddress(J)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "extendedDeviceMacAddress"    # J

    .line 476
    const/4 v0, 0x6

    .line 477
    .local v0, "tag":B
    const/16 v1, 0x8

    .line 479
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 480
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 481
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 483
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DeviceMacAddress;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 484
    return-object p0
.end method

.method public setExtendedDstMacAddress(J)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "extendedDstMacAddress"    # J

    .line 500
    const/4 v0, 0x6

    .line 501
    .local v0, "tag":B
    const/16 v1, 0x8

    .line 503
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 504
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 505
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 507
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/DstMacAddress;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 508
    return-object p0
.end method

.method public setMacAddressMode(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "macAddressMode"    # B

    .line 572
    const/16 v0, 0x26

    .line 573
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 575
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 576
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 577
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 579
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/MacAddressMode;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/MacAddressMode;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    return-object p0
.end method

.method public setNumberOfStsSegments(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "numberOfStsSegments"    # B

    .line 584
    const/16 v0, 0x29

    .line 585
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 587
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 588
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 589
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 591
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfStsSegments;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/NumberOfStsSegments;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 592
    return-object p0
.end method

.method public setPreambleCodeIndex(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "preambleCodeIndex"    # B

    .line 560
    const/16 v0, 0x14

    .line 561
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 563
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 564
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 565
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 567
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/PreambleCodeIndex;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 568
    return-object p0
.end method

.method public setRangingInterval(I)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "rangingInterval"    # I

    .line 512
    const/16 v0, 0x9

    .line 513
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 515
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 516
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 517
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 519
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/RangingInterval;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/RangingInterval;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    return-object p0
.end method

.method public setRframeConfig(B)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "rframeConfig"    # B

    .line 548
    const/16 v0, 0x12

    .line 549
    .local v0, "tag":B
    const/4 v1, 0x1

    .line 551
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 552
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 553
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 555
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/RframeConfig;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/RframeConfig;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    return-object p0
.end method

.method public setStsIndex(I)Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;
    .locals 6
    .param p1, "stsIndex"    # I

    .line 524
    const/16 v0, 0xa

    .line 525
    .local v0, "tag":B
    const/4 v1, 0x4

    .line 527
    .local v1, "length":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 528
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 529
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 531
    .local v3, "payload":[B
    iget-object v4, p0, Lcom/samsung/uwb/support/data/param/appconfig/AppConfigParameter$Builder;->mAppConfigSet:Ljava/util/HashSet;

    new-instance v5, Lcom/samsung/uwb/support/data/param/appconfig/StsIndex;

    invoke-direct {v5, v0, v1, v3}, Lcom/samsung/uwb/support/data/param/appconfig/StsIndex;-><init>(BI[B)V

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 532
    return-object p0
.end method
