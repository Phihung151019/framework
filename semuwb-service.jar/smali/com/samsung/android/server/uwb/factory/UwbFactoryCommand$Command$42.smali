.class final enum Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$42;
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

    .line 400
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

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command$42;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method getMessageId(Ljava/lang/String;)I
    .locals 1
    .param p1, "sData"    # Ljava/lang/String;

    .line 404
    const/16 v0, 0xcc

    return v0
.end method
