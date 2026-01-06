.class Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;
.super Ljava/lang/Object;
.source "SamsungUwbTestManager.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/IVendorExtension$SessionNotification;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;-><init>(Landroid/content/Context;Lcom/samsung/android/server/uwb/IVendorExtension;Lcom/samsung/android/server/uwb/UwbVendorExtensionWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRangingReportReceived(Landroid/uwb/RangingReport;)Landroid/uwb/RangingReport;
    .locals 0
    .param p1, "rangingReport"    # Landroid/uwb/RangingReport;

    .line 207
    return-object p1
.end method

.method public onSessionConfigurationChanged(Landroid/os/PersistableBundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 175
    const-string v0, "session_id"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 176
    .local v0, "sessionId":I
    if-nez v0, :cond_5

    .line 177
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSessionConfigurationChanged, mIsTestConfigNeeded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmIsTestConfigNeeded(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmIsTestConfigNeeded(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmIsTestConfigNeeded(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v1, v2}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmIsConfigured(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V

    .line 182
    const-string v1, "session_token"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "sessionToken":I
    new-instance v3, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;

    int-to-long v4, v1

    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmTestConfigParams(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/samsung/uwb/support/uci/cmd/TestConfigSetCommand;-><init>(JLjava/util/List;)V

    .line 184
    .local v3, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v4, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v4}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v5

    invoke-virtual {v3}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v6

    invoke-virtual {v3}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v4

    .line 185
    .local v4, "respUci":[B
    const/4 v5, 0x1

    if-eqz v4, :cond_2

    array-length v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    aget-byte v6, v4, v2

    if-nez v6, :cond_1

    .line 188
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v6, v5}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmIsConfigured(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V

    goto :goto_1

    .line 190
    :cond_1
    return-void

    .line 186
    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onSessionConfigurationChanged: TestConfigSet respUci is null or size of respUci is zero"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v6, v2}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmIsConfigured(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V

    .line 194
    new-instance v6, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;

    int-to-long v7, v1

    iget-object v9, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v9}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmVendorAppConfigParams(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/samsung/uwb/support/uci/cmd/SessionSetVendorAppConfigCommand;-><init>(JLjava/util/List;)V

    .line 195
    .end local v3    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    .local v6, "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    iget-object v3, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v3}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fgetmIVendorExtension(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;)Lcom/samsung/android/server/uwb/IVendorExtension;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/uwb/support/uci/UciPacket;->getGid()B

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/uwb/support/uci/UciPacket;->getOid()B

    move-result v8

    invoke-virtual {v6}, Lcom/samsung/uwb/support/uci/UciPacket;->getPayload()[B

    move-result-object v9

    invoke-interface {v3, v7, v8, v9}, Lcom/samsung/android/server/uwb/IVendorExtension;->sendVendorUciMessage(II[B)[B

    move-result-object v3

    .line 196
    .end local v4    # "respUci":[B
    .local v3, "respUci":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-nez v4, :cond_3

    goto :goto_2

    .line 198
    :cond_3
    aget-byte v2, v3, v2

    if-nez v2, :cond_5

    .line 199
    iget-object v2, p0, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager$2;->this$0:Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;

    invoke-static {v2, v5}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$fputmIsConfigured(Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;Z)V

    goto :goto_3

    .line 197
    :cond_4
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/rfTest/SamsungUwbTestManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "reConfigureTestModeSession: SetVendorAppConfig respUci is null or size of respUci is zero"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v1    # "sessionToken":I
    .end local v3    # "respUci":[B
    .end local v6    # "packet":Lcom/samsung/uwb/support/uci/UciPacket;
    :cond_5
    :goto_3
    return-void
.end method

.method public onSessionStatusNotificationReceived(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 171
    return-void
.end method
