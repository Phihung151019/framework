.class public Landroid/test/mock/MockContentProvider;
.super Landroid/content/ContentProvider;
.source "MockContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/mock/MockContentProvider$InversionIContentProvider;
    }
.end annotation


# instance fields
.field private final mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;


# direct methods
.method public static synthetic $r8$lambda$3s2lBhzbwCy5PGpKHP6Zj0TrW6E(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/test/mock/MockContentProvider;->lambda$getTypeAsync$0(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8L2CFWNIaPn8_ZdfodqbicyFLoQ(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/test/mock/MockContentProvider;->lambda$getTypeAnonymousAsync$1(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SJ-SJWQeSDpMRzt8U04W4KN0Ms4(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/test/mock/MockContentProvider;->lambda$canonicalizeAsync$2(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mrbRP-j_2Xm_gRvp_cg9R72JLlU(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/test/mock/MockContentProvider;->lambda$uncanonicalizeAsync$3(Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 203
    new-instance v0, Landroid/test/mock/MockContext;

    invoke-direct {v0}, Landroid/test/mock/MockContext;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v1, v2}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 197
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v2}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 211
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 197
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    invoke-direct {v0, p0, v1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .line 231
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V

    .line 197
    new-instance v0, Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/test/mock/MockContentProvider$InversionIContentProvider;-><init>(Landroid/test/mock/MockContentProvider;Landroid/test/mock/MockContentProvider-IA;)V

    iput-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    .line 232
    return-void
.end method

.method public static attachInfoForTesting(Landroid/content/ContentProvider;Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0
    .param p0, "provider"    # Landroid/content/ContentProvider;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "providerInfo"    # Landroid/content/pm/ProviderInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 400
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 401
    return-void
.end method

.method private synthetic lambda$canonicalizeAsync$2(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 336
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method private synthetic lambda$getTypeAnonymousAsync$1(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method private synthetic lambda$getTypeAsync$0(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 253
    return-void
.end method

.method private synthetic lambda$uncanonicalizeAsync$3(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 348
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {p0, p1}, Landroid/test/mock/MockContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 350
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 351
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .line 309
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .line 304
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 335
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda0;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 340
    return-void
.end method

.method public checkUriPermission(Landroid/net/Uri;II)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 236
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/test/mock/MockContentProvider;->mIContentProvider:Landroid/test/mock/MockContentProvider$InversionIContentProvider;

    return-object v0
.end method

.method public getIContentProviderBinder()Landroid/os/IBinder;
    .locals 1

    .line 383
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 241
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeAnonymous(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTypeAnonymousAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 266
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda1;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "remoteCallback"    # Landroid/os/RemoteCallback;

    .line 249
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda2;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 275
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;

    .line 327
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refresh(Landroid/net/Uri;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "args"    # Landroid/os/Bundle;

    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method call"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uncanonicalizeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 347
    sget-object v0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Landroid/test/mock/MockContentProvider$$ExternalSyntheticLambda3;-><init>(Landroid/test/mock/MockContentProvider;Landroid/net/Uri;Landroid/os/RemoteCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "unimplemented mock method"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
