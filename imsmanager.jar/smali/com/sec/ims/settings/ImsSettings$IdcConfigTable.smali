.class public final Lcom/sec/ims/settings/ImsSettings$IdcConfigTable;
.super Ljava/lang/Object;
.source "ImsSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/settings/ImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdcConfigTable"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IDC_APPDATA_PROCESS_MODE:Ljava/lang/String; = "IDC_APPDATA_PROCESS_MODE"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 122
    const-string v0, "content://com.sec.ims.settings/idcconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsSettings$IdcConfigTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
