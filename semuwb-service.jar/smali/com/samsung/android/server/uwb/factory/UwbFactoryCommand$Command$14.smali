.class final enum Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$14;
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

    .line 148
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$14;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method getMessageId(Ljava/lang/String;)I
    .locals 3
    .param p1, "sData"    # Ljava/lang/String;

    .line 152
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "sDataArray":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sDataArray length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UwbFactoryCommand"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v1, 0xc

    return v1

    .line 157
    :cond_0
    const/4 v1, -0x1

    return v1
.end method
