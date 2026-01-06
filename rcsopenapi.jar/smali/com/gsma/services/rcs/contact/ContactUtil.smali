.class public Lcom/gsma/services/rcs/contact/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MCC_UNDEFINED:I = 0x0

.field private static final MSISDN_PREFIX_INTERNATIONAL:Ljava/lang/String; = "00"

.field private static final PATTERN_CONTACT:Ljava/util/regex/Pattern;

.field private static final PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

.field private static final REGEXP_CONTACT:Ljava/lang/String; = "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

.field private static final REGEXP_COUNTRY_CODE:Ljava/lang/String; = "^\\+\\d{1,3}$"

.field private static volatile instance:Lcom/gsma/services/rcs/contact/ContactUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private msisdnWithPrefixAndCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    .line 69
    const-string v0, "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "^\\+\\d{1,3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 88
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    .line 89
    return-void
.end method

.method private static getCodes(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 122
    const-string v0, "MyCountryCode"

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 98
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    if-nez v1, :cond_1

    .line 100
    if-eqz p0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getCodes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .end local v1    # "countryCode":Ljava/lang/String;
    .local v2, "countryCode":Ljava/lang/String;
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance() countryCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v2, :cond_1

    .line 108
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 109
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-direct {v3, p0}, Lcom/gsma/services/rcs/contact/ContactUtil;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    .line 111
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    iput-object v2, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    .line 112
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    sget-object v4, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/contact/ContactUtil;->getMyCountryAreaCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    goto :goto_0

    .line 101
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "countryCode":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 118
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    return-object v1

    .line 133
    :cond_0
    const-string v0, "[ -]"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 138
    :cond_1
    return-object v1
.end method


# virtual methods
.method public formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_4

    .line 165
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    .line 171
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountryAreaCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 182
    :cond_1
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The contact number doesn\'t start with countryCode or countryAreaCode, add countryCode in front of it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 189
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 166
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code is unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_4
    :goto_0
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 195
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input parameter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMyCountryAreaCode()Ljava/lang/String;
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "CountryAreaCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyCountryCode()Ljava/lang/String;
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "MyCountryCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVCard(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 14
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .end local p1    # "contactUri":Landroid/net/Uri;
    .local v3, "contactUri":Landroid/net/Uri;
    :try_start_1
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v1, p1

    .line 231
    const/4 p1, 0x0

    if-nez v1, :cond_1

    .line 232
    nop

    .line 279
    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    return-object p1

    .line 234
    :cond_1
    :try_start_2
    const-string v0, "display_name"

    .line 235
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    .line 236
    .local v2, "displayNameColIdx":I
    const-string v0, "lookup"

    .line 237
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 238
    .local v4, "lookupKeyColIdx":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez v0, :cond_3

    .line 239
    nop

    .line 279
    if-eqz v1, :cond_2

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_2
    return-object p1

    .line 241
    :cond_3
    :try_start_3
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 242
    .local p1, "lookupKey":Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    .line 245
    .local v5, "vCardUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 246
    .local v6, "vCardData":[B
    const/4 v7, 0x0

    .line 247
    .local v7, "len":I
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "r"

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    move-object v8, v0

    .line 249
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v8, :cond_6

    .line 250
    :try_start_4
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v9, v0

    .line 251
    .local v9, "fis":Ljava/io/FileInputStream;
    :try_start_5
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v10

    long-to-int v0, v10

    new-array v0, v0, [B

    move-object v6, v0

    .line 252
    invoke-virtual {v9, v6}, Ljava/io/FileInputStream;->read([B)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v7, v0

    .line 253
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_3

    .line 250
    :catchall_0
    move-exception v0

    move-object v10, v6

    move-object v6, v0

    .end local v6    # "vCardData":[B
    .local v10, "vCardData":[B
    if-eqz v9, :cond_4

    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "displayNameColIdx":I
    .end local v3    # "contactUri":Landroid/net/Uri;
    .end local v4    # "lookupKeyColIdx":I
    .end local v5    # "vCardUri":Landroid/net/Uri;
    .end local v7    # "len":I
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v10    # "vCardData":[B
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .end local p1    # "lookupKey":Ljava/lang/String;
    :cond_4
    :goto_0
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 247
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "displayNameColIdx":I
    .restart local v3    # "contactUri":Landroid/net/Uri;
    .restart local v4    # "lookupKeyColIdx":I
    .restart local v5    # "vCardUri":Landroid/net/Uri;
    .restart local v7    # "len":I
    .restart local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v10    # "vCardData":[B
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .restart local p1    # "lookupKey":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object v6, v0

    goto :goto_1

    .end local v10    # "vCardData":[B
    .restart local v6    # "vCardData":[B
    :catchall_3
    move-exception v0

    move-object v10, v6

    move-object v6, v0

    .end local v6    # "vCardData":[B
    .restart local v10    # "vCardData":[B
    :goto_1
    if-eqz v8, :cond_5

    :try_start_9
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "contactUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    :cond_5
    :goto_2
    throw v6

    .line 255
    .end local v10    # "vCardData":[B
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "contactUri":Landroid/net/Uri;
    .restart local v6    # "vCardData":[B
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 257
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 258
    .local v8, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 259
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ".vcf"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 260
    .local v9, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    .line 261
    .local v10, "vCardFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 262
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    .line 263
    .local v0, "flag":Z
    sget-object v11, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vCardFile.delete();flag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v0    # "flag":Z
    :cond_8
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v0, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move-object v11, v0

    .line 267
    .local v11, "fos":Ljava/io/FileOutputStream;
    if-eqz v6, :cond_9

    :try_start_b
    array-length v0, v6

    if-ne v7, v0, :cond_9

    .line 268
    const/4 v0, 0x0

    invoke-virtual {v11, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_4

    .line 270
    :cond_9
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const-string v12, "vCard File not read correctly"

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 272
    :goto_4
    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 274
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 279
    if-eqz v1, :cond_a

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 274
    :cond_a
    return-object v0

    .line 266
    .restart local v11    # "fos":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v0

    move-object v12, v0

    :try_start_d
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    :try_start_e
    invoke-virtual {v12, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "contactUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    :goto_5
    throw v12
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 276
    .end local v2    # "displayNameColIdx":I
    .end local v4    # "lookupKeyColIdx":I
    .end local v5    # "vCardUri":Landroid/net/Uri;
    .end local v6    # "vCardData":[B
    .end local v7    # "len":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "vCardFile":Ljava/io/File;
    .end local v11    # "fos":Ljava/io/FileOutputStream;
    .end local p1    # "lookupKey":Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "contactUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_6

    .line 279
    .end local v3    # "contactUri":Landroid/net/Uri;
    .local p1, "contactUri":Landroid/net/Uri;
    :catchall_7
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .end local p1    # "contactUri":Landroid/net/Uri;
    .restart local v3    # "contactUri":Landroid/net/Uri;
    goto :goto_7

    .line 276
    .end local v3    # "contactUri":Landroid/net/Uri;
    .restart local p1    # "contactUri":Landroid/net/Uri;
    :catch_1
    move-exception v0

    move-object v3, p1

    move-object p1, v0

    .line 277
    .restart local v3    # "contactUri":Landroid/net/Uri;
    .local p1, "e":Ljava/io/IOException;
    :goto_6
    :try_start_f
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v3    # "contactUri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 279
    .end local p1    # "e":Ljava/io/IOException;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "contactUri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    :catchall_8
    move-exception v0

    move-object p1, v0

    :goto_7
    if-eqz v1, :cond_b

    .line 280
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_b
    throw p1
.end method

.method public isMyCountryCodeDefined()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidContact(Ljava/lang/String;)Z
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
