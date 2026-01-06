.class public Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContract;
.super Ljava/lang/Object;
.source "NetworkSlicingContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContract$NetworkSlicingColumns;
    }
.end annotation


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.tmobile.oem.echolocate.system.provider.networkslicing.NetworkSlicingContentProvider"

.field public static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist DATABASE:Ljava/lang/String; = "echolocate_system_networkslicing_db"

.field public static final blacklist MULTIPLE_RECORD_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.tmobile.oem.echolocate.system.provider.networkslicing.NetworkSlicingContentProvider_networkslicing_1"

.field public static final blacklist SCHEME:Ljava/lang/String; = "content://"

.field public static final blacklist SINGLE_RECORD_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.tmobile.oem.echolocate.system.provider.networkslicing.NetworkSlicingContentProvider_networkslicing_1"

.field public static final blacklist TABLE:Ljava/lang/String; = "networkslicing"

.field public static final blacklist VERSION:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 11
    const-string v0, "content://com.tmobile.oem.echolocate.system.provider.networkslicing.NetworkSlicingContentProvider/networkslicing"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tmobile/oem/echolocate/system/provider/networkslicing/NetworkSlicingContract;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
