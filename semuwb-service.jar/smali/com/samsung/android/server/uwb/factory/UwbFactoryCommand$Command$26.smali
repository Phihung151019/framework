.class final enum Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$26;
.super Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
.source "UwbFactoryCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 6
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "isStaticCommand"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 255
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .end local p3    # "command":Ljava/lang/String;
    .end local p4    # "isStaticCommand":Z
    .local v3, "command":Ljava/lang/String;
    .local v4, "isStaticCommand":Z
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;-><init>(Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/server/uwb/factory/UwbFactoryCommand-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;ZLcom/samsung/android/server/uwb/factory/UwbFactoryCommand-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$26;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method getMessageId(Ljava/lang/String;)I
    .locals 4
    .param p1, "sData"    # Ljava/lang/String;

    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "UwbFactoryCommand"

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-ge v0, v3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x5

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->-$$Nest$smisValidTxCalFilename(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    const-string v0, "isValidTxCalFilename: inValid filename"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return v1

    .line 266
    :cond_1
    const/16 v0, 0x15

    return v0

    .line 260
    :cond_2
    :goto_0
    const-string v0, "empty sData"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v1
.end method
