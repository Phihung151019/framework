.class Lcom/android/ims/SecImsManager$WfcDataBaseManager;
.super Ljava/lang/Object;
.source "SecImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/SecImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WfcDataBaseManager"
.end annotation


# static fields
.field public static final blacklist COLUMN_VOWIFI_MDN:Ljava/lang/String; = "vowifi_mdn"

.field public static final blacklist COLUMN_WFC_ENABLED_BY_PLATFORM:Ljava/lang/String; = "epdg_support"

.field public static final blacklist COLUMN_WFC_ENABLED_BY_USER:Ljava/lang/String; = "wifi_call_enable"

.field public static final blacklist COLUMN_WFC_MODE:Ljava/lang/String; = "wifi_call_preferred"

.field public static final blacklist COLUMN_WFC_MODE_WHEN_ROAMING:Ljava/lang/String; = "wifi_call_when_roaming"

.field private static final blacklist CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

.field private static final blacklist CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

.field public static final blacklist NOT_INITIALIZED:I = -0x1

.field private static final blacklist SEC_ROAM_WFC_CS_PREF:I = 0x0

.field private static final blacklist SEC_ROAM_WFC_WIFI_ONLY:I = 0x2

.field private static final blacklist SEC_ROAM_WFC_WIFI_PREF:I = 0x1

.field private static final blacklist SEC_WFC_CS_PREF:I = 0x2

.field private static final blacklist SEC_WFC_WIFI_ONLY:I = 0x3

.field private static final blacklist SEC_WFC_WIFI_PREF:I = 0x1

.field private static final blacklist SIM1_SIM2_SUPPORT:I = 0x3

.field private static final blacklist SIM1_SUPPORT:I = 0x1

.field private static final blacklist SIM2_SUPPORT:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SecImsManager-WfcDataBaseManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 642
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 643
    const-string v2, "iwlansettings"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "todos"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "vowifisetting"

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    .line 644
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 645
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vowifisetting2"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    .line 644
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertToGoogleWfcMode(IZ)I
    .locals 3
    .param p0, "mode"    # I
    .param p1, "roaming"    # Z

    .line 743
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    .line 744
    packed-switch p0, :pswitch_data_0

    .line 752
    return v2

    .line 750
    :pswitch_0
    return v0

    .line 748
    :pswitch_1
    return v2

    .line 746
    :pswitch_2
    return v1

    .line 755
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 763
    return v1

    .line 761
    :pswitch_3
    return v0

    .line 757
    :pswitch_4
    return v1

    .line 759
    :pswitch_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static blacklist convertToSecWfcMode(IZ)I
    .locals 2
    .param p0, "mode"    # I
    .param p1, "roaming"    # Z

    .line 718
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    .line 719
    packed-switch p0, :pswitch_data_0

    .line 727
    return v0

    .line 723
    :pswitch_0
    return v0

    .line 721
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 725
    :pswitch_2
    return v1

    .line 730
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 738
    return v1

    .line 734
    :pswitch_3
    return v0

    .line 732
    :pswitch_4
    return v1

    .line 736
    :pswitch_5
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static blacklist getInt(Landroid/content/Context;Ljava/lang/String;II)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I
    .param p3, "phoneId"    # I

    .line 705
    const/4 v0, 0x0

    .line 706
    .local v0, "dbValue":I
    add-int/lit8 v1, p3, 0x1

    .line 707
    .local v1, "slotId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 708
    return v0
.end method

.method public static blacklist getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 670
    const-string v1, "caught:"

    const-string v2, "SecImsManager-WfcDataBaseManager"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 671
    .local v5, "projection":[Ljava/lang/String;
    const-string v9, ""

    .line 672
    .local v9, "dbValue":Ljava/lang/String;
    const/4 v0, 0x0

    .line 674
    .local v0, "messagesCursor":Landroid/database/Cursor;
    if-nez p3, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 678
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/SecImsManager$WfcDataBaseManager;->CONTENT_URI_VOWIFISETTING_TABLE2:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v3, v0

    .line 683
    .end local v0    # "messagesCursor":Landroid/database/Cursor;
    .local v3, "messagesCursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 684
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 685
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    .end local v9    # "dbValue":Ljava/lang/String;
    .local v0, "dbValue":Ljava/lang/String;
    goto :goto_2

    .line 696
    .end local v0    # "dbValue":Ljava/lang/String;
    .restart local v9    # "dbValue":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 692
    :catch_0
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    nop

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    if-eqz v3, :cond_3

    .line 697
    goto :goto_3

    .line 689
    :catch_1
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    nop

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    if-eqz v3, :cond_3

    .line 697
    goto :goto_3

    .line 696
    :goto_1
    if-eqz v3, :cond_1

    .line 697
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v3, 0x0

    .line 700
    :cond_1
    throw v0

    .line 687
    :cond_2
    move-object v0, p2

    move-object v9, v0

    .line 696
    :goto_2
    if-eqz v3, :cond_3

    .line 697
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 698
    const/4 v3, 0x0

    .line 701
    :cond_3
    return-object v9
.end method

.method public static blacklist setInt(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "phoneId"    # I

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInt() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecImsManager-WfcDataBaseManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    add-int/lit8 v0, p3, 0x1

    .line 714
    .local v0, "slotId":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 715
    return-void
.end method
