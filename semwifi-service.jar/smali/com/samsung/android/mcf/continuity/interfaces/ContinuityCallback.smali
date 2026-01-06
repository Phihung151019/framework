.class public final Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# direct methods
.method public static getBtMac(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    .line 9
    .line 10
    if-nez p0, :cond_1

    .line 11
    .line 12
    :goto_0
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_1
    const-string v0, "KEY_BT_MAC"

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getContinuityDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v0, "KEY_CONTINUITY_NEARBY_DEVICE_BUNDLE"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    instance-of v0, p0, Landroid/os/Bundle;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return-object v1

    .line 22
    :cond_1
    check-cast p0, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory;->continuityDeviceWrapperFromBundle(Landroid/os/Bundle;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public static getEvent(Landroid/os/Message;)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/os/Bundle;

    .line 4
    .line 5
    const/16 v1, 0x66

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    .line 11
    .line 12
    const-string v0, "KEY_EVENT"

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static getMessageId(Landroid/os/Message;)B
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v0, "KEY_MESSAGE_ID"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getStatus(Landroid/os/Message;)I
    .locals 2

    .line 1
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v0, p0, Landroid/os/Bundle;

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    check-cast p0, Landroid/os/Bundle;

    .line 10
    .line 11
    const-string v0, "KEY_STATUS"

    .line 12
    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method
