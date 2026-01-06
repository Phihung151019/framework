.class public Lcom/gsma/services/rcs/CommonServiceConfiguration;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "getStringValueSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 313
    .local v2, "cr":Landroid/content/ContentResolver;
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 314
    .local v6, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 315
    .local v1, "c":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 316
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .local v0, "str":Ljava/lang/String;
    nop

    .line 321
    if-eqz v1, :cond_0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 318
    :cond_0
    return-object v0

    .line 314
    .end local v0    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v3

    .line 321
    .restart local v2    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "ctx":Landroid/content/Context;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 324
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "updateSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, "cr":Landroid/content/ContentResolver;
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    return-void
.end method


# virtual methods
.method public getDefaultMessagingMethod()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "DefaultMessagingMethod"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    :goto_0
    return-object v1
.end method

.method public getMessagingUX()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MessagingMode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    :goto_0
    return-object v1
.end method

.method public getMinimumBatteryLevel()Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MinimumBatteryLevel"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    :goto_0
    return-object v1
.end method

.method public getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v0

    .line 212
    .local v0, "contactUtilInstance":Lcom/gsma/services/rcs/contact/ContactUtil;
    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MyContactId"

    invoke-static {v1, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "contact":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 218
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 221
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    return-object v2

    .line 213
    .end local v1    # "contact":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot instantiate ContactUtil"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMyDisplayName()Ljava/lang/String;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MyDisplayName"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfigValid()Z
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "ConfigurationValidity"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V
    .locals 3
    .param p1, "method"    # Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 263
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "DefaultMessagingMethod"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 269
    return-void

    .line 264
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid default messaging method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumBatteryLevel(Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;)V
    .locals 3
    .param p1, "level"    # Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MinimumBatteryLevel"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setMyDisplayName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 197
    if-eqz p1, :cond_0

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MyDisplayName"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 203
    return-void

    .line 198
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
