.class public final Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;
.super Ljava/lang/Object;
.source "JanskyContract.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/JanskyContract$CommonColumns;
.implements Lcom/sec/vsim/app/jansky/JanskyContract$AccountColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/JanskyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/account"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/account"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 667
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildAccountUri(J)Landroid/net/Uri;
    .locals 1
    .param p0, "accountId"    # J

    .line 674
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildActivateSIMDeviceUri()Landroid/net/Uri;
    .locals 2

    .line 702
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "activate_sim_device"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDisableActiveAccountUri()Landroid/net/Uri;
    .locals 2

    .line 695
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "disable_active_account"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildDowmloadAllContactsUri()Landroid/net/Uri;
    .locals 2

    .line 716
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "download_all_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLoginPageUri()Landroid/net/Uri;
    .locals 2

    .line 688
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "open_login_page"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildLogoutUri()Landroid/net/Uri;
    .locals 2

    .line 681
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "logout"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUploadAllContactsUri()Landroid/net/Uri;
    .locals 2

    .line 709
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "upload_all_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static final buildUploadUpdatedContactUri()Landroid/net/Uri;
    .locals 2

    .line 723
    sget-object v0, Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "upload_updated_contact"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
