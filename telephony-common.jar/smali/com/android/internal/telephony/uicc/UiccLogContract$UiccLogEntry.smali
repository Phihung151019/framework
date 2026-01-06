.class public Lcom/android/internal/telephony/uicc/UiccLogContract$UiccLogEntry;
.super Ljava/lang/Object;
.source "UiccLogContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccLogContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiccLogEntry"
.end annotation


# static fields
.field public static final blacklist COLUMN_NAME_LOG:Ljava/lang/String; = "log"

.field public static final blacklist COLUMN_NAME_TIME:Ljava/lang/String; = "time"

.field public static final blacklist TABLE_NAME:Ljava/lang/String; = "uicclog"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
