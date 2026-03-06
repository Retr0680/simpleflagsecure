.class public final Lcom/android/server/permission/access/permission/PermissionService;
.super Ljava/lang/Object;
.source "PermissionService.kt"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/permission/access/permission/PermissionService$Companion;,
        Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;,
        Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPermissionService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionService.kt\ncom/android/server/permission/access/permission/PermissionService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AccessCheckingService.kt\ncom/android/server/permission/access/AccessCheckingService\n+ 4 IndexedMapExtensions.kt\ncom/android/server/permission/access/immutable/IndexedMapExtensionsKt\n+ 5 Permission.kt\ncom/android/server/permission/access/permission/Permission\n+ 6 ArrayMapExtensions.kt\ncom/android/server/permission/access/collection/ArrayMapExtensionsKt\n+ 7 BinderExtensions.kt\ncom/android/server/permission/access/util/BinderExtensionsKt\n+ 8 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 9 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 10 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 11 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 12 ArraySetExtensions.kt\ncom/android/server/permission/access/collection/ArraySetExtensionsKt\n+ 13 SparseBooleanArrayExtensions.kt\ncom/android/server/permission/access/collection/SparseBooleanArrayExtensionsKt\n+ 14 IntReferenceMapExtensions.kt\ncom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt\n+ 15 IndexedReferenceMapExtensions.kt\ncom/android/server/permission/access/immutable/IndexedReferenceMapExtensionsKt\n+ 16 IndexedSetExtensions.kt\ncom/android/server/permission/access/immutable/IndexedSetExtensionsKt\n*L\n1#1,2939:1\n337#1:2960\n339#1:2963\n340#1:2967\n341#1,4:2969\n337#1:2975\n339#1:2978\n340#1:2982\n341#1,4:2984\n2283#1,2:3283\n2285#1,2:3291\n2283#1,2:3293\n2285#1,2:3299\n2283#1,2:3301\n2285#1,2:3308\n2283#1,2:3310\n2283#1,2:3314\n2283#1,2:3316\n2285#1,2:3322\n2283#1,2:3326\n2285#1,2:3332\n2283#1,2:3335\n2285#1,2:3341\n2283#1,2:3345\n2283#1,2:3347\n2285#1,2:3353\n2285#1,2:3355\n2285#1,2:3358\n2285#1,2:3361\n2522#1,5:3408\n2522#1,5:3415\n1#2:2940\n1#2:2945\n1#2:2957\n1#2:2962\n1#2:2977\n1#2:2994\n1#2:3004\n1#2:3015\n1#2:3026\n1#2:3047\n1#2:3062\n1#2:3081\n1#2:3127\n1#2:3141\n1#2:3148\n1#2:3186\n1#2:3196\n1#2:3208\n1#2:3235\n1#2:3273\n1#2:3281\n1#2:3368\n1#2:3375\n1#2:3395\n1#2:3405\n1#2:3424\n287#3:2941\n287#3:2948\n287#3:2949\n287#3:2951\n287#3:2961\n287#3:2976\n287#3:2990\n287#3:2997\n287#3:2998\n293#3,4:3007\n297#3,3:3012\n300#3,2:3016\n293#3,4:3018\n297#3,3:3023\n300#3,2:3027\n287#3:3034\n287#3:3037\n287#3:3038\n287#3:3039\n287#3:3040\n287#3:3043\n287#3:3050\n293#3,7:3055\n300#3,2:3063\n293#3,4:3065\n297#3,3:3078\n300#3,2:3082\n287#3:3094\n287#3:3095\n287#3:3101\n287#3:3102\n287#3:3112\n293#3,7:3120\n300#3,2:3128\n293#3,4:3130\n297#3,3:3138\n300#3,2:3142\n287#3:3144\n287#3:3151\n293#3,4:3168\n297#3,3:3183\n300#3,2:3187\n293#3,7:3189\n300#3,2:3197\n293#3,4:3199\n297#3,3:3205\n300#3,2:3209\n287#3:3211\n287#3:3226\n287#3:3242\n287#3:3247\n287#3:3248\n287#3:3363\n287#3:3364\n287#3:3371\n287#3:3378\n287#3:3387\n293#3,7:3388\n300#3,2:3396\n293#3,7:3398\n300#3,2:3406\n88#4:2942\n47#4,2:2943\n50#4:2946\n89#4:2947\n88#4:2952\n47#4,2:2953\n50#4:2958\n89#4:2959\n88#4:2964\n47#4,2:2965\n50#4:2973\n89#4:2974\n88#4:2979\n47#4,2:2980\n50#4:2988\n89#4:2989\n88#4:2991\n47#4,2:2992\n50#4:2995\n89#4:2996\n88#4:2999\n47#4,2:3000\n50#4:3005\n89#4:3006\n47#4,2:3029\n50#4:3033\n88#4:3044\n47#4,2:3045\n50#4:3048\n89#4:3049\n47#4,4:3051\n47#4,2:3096\n50#4:3100\n29#4:3103\n47#4,2:3104\n30#4,4:3106\n50#4:3110\n34#4:3111\n88#4:3145\n47#4,2:3146\n50#4:3149\n89#4:3150\n47#4,4:3243\n47#4,4:3259\n93#4,4:3269\n93#4,4:3277\n47#4,2:3285\n50#4:3290\n47#4,4:3295\n47#4,2:3303\n50#4:3307\n47#4,4:3318\n47#4,4:3328\n47#4,4:3337\n47#4,4:3349\n80#4:3365\n47#4,2:3366\n50#4:3369\n81#4:3370\n80#4:3372\n47#4,2:3373\n50#4:3376\n81#4:3377\n47#4,2:3381\n50#4:3385\n36#5:2950\n39#5:2955\n36#5:2956\n48#5:2968\n63#5:2983\n36#5:3002\n33#5:3003\n42#5:3011\n42#5:3022\n153#5:3031\n33#5:3032\n57#5:3035\n48#5:3036\n87#5:3041\n63#5:3042\n78#5:3071\n63#5:3072\n57#5:3073\n48#5:3074\n66#5:3075\n63#5:3076\n78#5:3084\n63#5:3085\n114#5:3086\n63#5:3087\n57#5:3088\n48#5:3089\n87#5:3090\n63#5:3091\n57#5:3092\n48#5:3093\n36#5:3152\n141#5:3153\n132#5,13:3154\n33#5:3167\n141#5:3174\n132#5,7:3175\n66#5:3212\n63#5:3213\n66#5:3229\n63#5:3230\n45#5:3287\n33#5:3288\n36#5:3289\n33#5:3305\n36#5:3306\n57#5:3383\n48#5:3384\n40#6,2:3069\n43#6:3077\n99#6,2:3098\n52#6,4:3231\n52#6,4:3420\n99#6,2:3438\n99#6,2:3440\n23#7,5:3113\n23#7,5:3431\n12567#8,2:3118\n13497#8,2:3379\n13499#8:3386\n13423#8,2:3425\n13423#8,2:3427\n13423#8,2:3429\n12567#8,2:3436\n216#9:3134\n217#9:3137\n216#9,2:3203\n216#9:3218\n217#9:3221\n216#9:3227\n217#9:3239\n216#9:3268\n217#9:3274\n1863#10,2:3135\n1872#10,2:3172\n1874#10:3182\n1863#10:3228\n1864#10:3238\n37#11:3214\n36#11,3:3215\n37#11:3222\n36#11,3:3223\n72#12,2:3219\n72#12,2:3236\n72#12,2:3413\n65#13,2:3240\n44#14,2:3249\n44#14,4:3251\n44#14,4:3255\n47#14:3267\n44#14,2:3312\n47#14:3360\n44#15,4:3263\n44#15,2:3324\n47#15:3334\n44#16,2:3275\n47#16:3282\n44#16,2:3343\n47#16:3357\n*S KotlinDebug\n*F\n+ 1 PermissionService.kt\ncom/android/server/permission/access/permission/PermissionService\n*L\n325#1:2960\n325#1:2963\n325#1:2967\n325#1:2969,4\n330#1:2975\n330#1:2978\n330#1:2982\n330#1:2984,4\n2179#1:3283,2\n2179#1:3291,2\n2195#1:3293,2\n2195#1:3299,2\n2202#1:3301,2\n2202#1:3308,2\n2219#1:3310,2\n2222#1:3314,2\n2224#1:3316,2\n2224#1:3322,2\n2242#1:3326,2\n2242#1:3332,2\n2254#1:3335,2\n2254#1:3341,2\n2263#1:3345,2\n2266#1:3347,2\n2266#1:3353,2\n2263#1:3355,2\n2222#1:3358,2\n2219#1:3361,2\n2393#1:3408,5\n2408#1:3415,5\n184#1:2945\n311#1:2957\n325#1:2962\n330#1:2977\n339#1:2994\n360#1:3004\n381#1:3015\n411#1:3026\n697#1:3047\n873#1:3062\n902#1:3081\n1453#1:3127\n1517#1:3141\n1738#1:3148\n1925#1:3186\n1946#1:3196\n1956#1:3208\n2029#1:3235\n2166#1:3273\n2171#1:3281\n2305#1:3368\n2331#1:3375\n2369#1:3395\n2380#1:3405\n2427#1:3424\n182#1:2941\n206#1:2948\n242#1:2949\n295#1:2951\n325#1:2961\n330#1:2976\n337#1:2990\n350#1:2997\n358#1:2998\n381#1:3007,4\n381#1:3012,3\n381#1:3016,2\n411#1:3018,4\n411#1:3023,3\n411#1:3027,2\n496#1:3034\n505#1:3037\n519#1:3038\n565#1:3039\n613#1:3040\n692#1:3043\n718#1:3050\n873#1:3055,7\n873#1:3063,2\n902#1:3065,4\n902#1:3078,3\n902#1:3082,2\n1157#1:3094\n1200#1:3095\n1242#1:3101\n1264#1:3102\n1298#1:3112\n1453#1:3120,7\n1453#1:3128,2\n1517#1:3130,4\n1517#1:3138,3\n1517#1:3142,2\n1724#1:3144\n1823#1:3151\n1925#1:3168,4\n1925#1:3183,3\n1925#1:3187,2\n1946#1:3189,7\n1946#1:3197,2\n1956#1:3199,4\n1956#1:3205,3\n1956#1:3209,2\n1996#1:3211\n2018#1:3226\n2106#1:3242\n2116#1:3247\n2126#1:3248\n2290#1:3363\n2304#1:3364\n2320#1:3371\n2339#1:3378\n2366#1:3387\n2369#1:3388,7\n2369#1:3396,2\n2380#1:3398,7\n2380#1:3406,2\n184#1:2942\n184#1:2943,2\n184#1:2946\n184#1:2947\n311#1:2952\n311#1:2953,2\n311#1:2958\n311#1:2959\n325#1:2964\n325#1:2965,2\n325#1:2973\n325#1:2974\n330#1:2979\n330#1:2980,2\n330#1:2988\n330#1:2989\n339#1:2991\n339#1:2992,2\n339#1:2995\n339#1:2996\n360#1:2999\n360#1:3000,2\n360#1:3005\n360#1:3006\n458#1:3029,2\n458#1:3033\n697#1:3044\n697#1:3045,2\n697#1:3048\n697#1:3049\n727#1:3051,4\n1210#1:3096,2\n1210#1:3100\n1266#1:3103\n1266#1:3104,2\n1266#1:3106,4\n1266#1:3110\n1266#1:3111\n1738#1:3145\n1738#1:3146,2\n1738#1:3149\n1738#1:3150\n2108#1:3243,4\n2150#1:3259,4\n2166#1:3269,4\n2171#1:3277,4\n2180#1:3285,2\n2180#1:3290\n2196#1:3295,4\n2203#1:3303,2\n2203#1:3307\n2225#1:3318,4\n2243#1:3328,4\n2255#1:3337,4\n2267#1:3349,4\n2305#1:3365\n2305#1:3366,2\n2305#1:3369\n2305#1:3370\n2331#1:3372\n2331#1:3373,2\n2331#1:3376\n2331#1:3377\n2345#1:3381,2\n2345#1:3385\n245#1:2950\n313#1:2955\n314#1:2956\n326#1:2968\n331#1:2983\n361#1:3002\n362#1:3003\n386#1:3011\n415#1:3022\n460#1:3031\n460#1:3032\n497#1:3035\n497#1:3036\n673#1:3041\n673#1:3042\n922#1:3071\n922#1:3072\n922#1:3073\n922#1:3074\n954#1:3075\n954#1:3076\n993#1:3084\n993#1:3085\n994#1:3086\n994#1:3087\n1002#1:3088\n1002#1:3089\n1011#1:3090\n1011#1:3091\n1097#1:3092\n1097#1:3093\n1831#1:3152\n1838#1:3153\n1838#1:3154,13\n1846#1:3167\n1930#1:3174\n1930#1:3175,7\n1997#1:3212\n1997#1:3213\n2027#1:3229\n2027#1:3230\n2181#1:3287\n2183#1:3288\n2185#1:3289\n2205#1:3305\n2206#1:3306\n2350#1:3383\n2350#1:3384\n903#1:3069,2\n903#1:3077\n1213#1:3098,2\n2029#1:3231,4\n2427#1:3420,4\n2907#1:3438,2\n2909#1:3440,2\n1311#1:3113,5\n2556#1:3431,5\n1445#1:3118,2\n2341#1:3379,2\n2341#1:3386\n2479#1:3425,2\n2482#1:3427,2\n2514#1:3429,2\n2683#1:3436,2\n1518#1:3134\n1518#1:3137\n1957#1:3203,2\n2002#1:3218\n2002#1:3221\n2020#1:3227\n2020#1:3239\n2161#1:3268\n2161#1:3274\n1523#1:3135,2\n1928#1:3172,2\n1928#1:3182\n2025#1:3228\n2025#1:3238\n1998#1:3214\n1998#1:3215,3\n2013#1:3222\n2013#1:3223,3\n2008#1:3219,2\n2030#1:3236,2\n2406#1:3413,2\n2067#1:3240,2\n2147#1:3249,2\n2148#1:3251,4\n2149#1:3255,4\n2147#1:3267\n2220#1:3312,2\n2220#1:3360\n2154#1:3263,4\n2237#1:3324,2\n2237#1:3334\n2170#1:3275,2\n2170#1:3282\n2261#1:3343,2\n2261#1:3357\n*E\n"
.end annotation


# static fields
.field private static final BACKGROUND_RATIONALE_CHANGE_ID:J

.field private static final BACKUP_TIMEOUT_MILLIS:J

.field public static final Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

.field private static final FULLER_PERMISSIONS:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private final isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

.field private metricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mountedStorageVolumes:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field private onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

.field private packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

.field private permissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private platformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field private final policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

.field private final service:Lcom/android/server/permission/access/AccessCheckingService;

.field private final storageVolumeLock:Ljava/lang/Object;

.field private final storageVolumePackageNames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private systemConfig:Lcom/android/server/SystemConfig;

.field private userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field private userManagerService:Lcom/android/server/pm/UserManagerService;

.field private virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->Companion:Lcom/android/server/permission/access/permission/PermissionService$Companion;

    .line 2895
    const-class v0, Lcom/android/server/permission/access/permission/PermissionService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 2903
    const-wide/32 v0, 0x8c7dff3

    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 2906
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v0

    .local v1, "$this$FULLER_PERMISSIONS_u24lambda_u24209":Landroid/util/ArrayMap;
    const/4 v2, 0x0

    .line 2907
    .local v2, "$i$a$-apply-PermissionService$Companion$FULLER_PERMISSIONS$1":I
    nop

    .line 2908
    nop

    .line 2907
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    .local v3, "key$iv":Ljava/lang/Object;
    move-object v4, v1

    .local v4, "$this$set$iv":Landroid/util/ArrayMap;
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .local v5, "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 99
    .local v6, "$i$f$set":I
    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .line 2909
    .end local v3    # "key$iv":Ljava/lang/Object;
    .end local v4    # "$this$set$iv":Landroid/util/ArrayMap;
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$set":I
    nop

    .line 2910
    nop

    .line 2909
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .restart local v3    # "key$iv":Ljava/lang/Object;
    .restart local v4    # "$this$set$iv":Landroid/util/ArrayMap;
    const-string v5, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .restart local v5    # "value$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 99
    .restart local v6    # "$i$f$set":I
    invoke-virtual {v4, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .line 2911
    .end local v3    # "key$iv":Ljava/lang/Object;
    .end local v4    # "$this$set$iv":Landroid/util/ArrayMap;
    .end local v5    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$i$f$set":I
    nop

    .line 2906
    .end local v1    # "$this$FULLER_PERMISSIONS_u24lambda_u24209":Landroid/util/ArrayMap;
    .end local v2    # "$i$a$-apply-PermissionService$Companion$FULLER_PERMISSIONS$1":I
    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 2913
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/permission/access/collection/ArraySetExtensionsKt;->arraySetOf([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    .line 2923
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/AccessCheckingService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/permission/access/AccessCheckingService;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 111
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v1, "permission"

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.AppIdPermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 114
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string v1, "device-permission"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.permission.DevicePermissionPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 116
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .line 133
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .line 108
    return-void
.end method

.method public static final synthetic access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "$receiver"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p3, "permissionTree"    # Lcom/android/server/permission/access/permission/Permission;

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    return-void
.end method

.method public static final synthetic access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "$receiver"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/content/Context;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    return-object v0
.end method

.method public static final synthetic access$getFULLER_PERMISSIONS$cp()Landroid/util/ArrayMap;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static final synthetic access$getHandler$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getLOG_TAG$cp()Ljava/lang/String;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getNOTIFICATIONS_PERMISSIONS$cp()Landroid/util/ArraySet;
    .locals 1

    .line 108
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->NOTIFICATIONS_PERMISSIONS:Landroid/util/ArraySet;

    return-object v0
.end method

.method public static final synthetic access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    return-object v0
.end method

.method public static final synthetic access$getOnPermissionsChangeListeners$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    return-object v0
.end method

.method public static final synthetic access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    return-object v0
.end method

.method public static final synthetic access$getService$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/AccessCheckingService;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    return-object v0
.end method

.method public static final synthetic access$isDelayedPermissionBackupFinished$p(Lcom/android/server/permission/access/permission/PermissionService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;

    .line 108
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method public static final synthetic access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->killUid(ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "$receiver"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "isGranted"    # Z

    .line 108
    invoke-direct/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "$receiver"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "isGranted"    # Z
    .param p7, "canManageRolePermission"    # Z
    .param p8, "overridePolicyFixed"    # Z
    .param p9, "reportError"    # Z
    .param p10, "methodName"    # Ljava/lang/String;

    .line 108
    invoke-direct/range {p0 .. p10}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "$this"    # Lcom/android/server/permission/access/permission/PermissionService;
    .param p1, "$receiver"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "flagMask"    # I
    .param p7, "flagValues"    # I
    .param p8, "canUpdateSystemFlags"    # Z
    .param p9, "reportErrorForUnknownPermission"    # Z
    .param p10, "isPermissionRequested"    # Z
    .param p11, "methodName"    # Ljava/lang/String;
    .param p12, "packageName"    # Ljava/lang/String;

    .line 108
    invoke-direct/range {p0 .. p12}, Lcom/android/server/permission/access/permission/PermissionService;->updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V
    .locals 7
    .param p1, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "appId"    # I
    .param p3, "permissionNames"    # Ljava/util/List;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1778
    nop

    .line 1779
    nop

    .line 1780
    nop

    .line 1781
    nop

    .line 1778
    const/4 v0, 0x2

    invoke-direct {p0, p2, v0, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object v0

    .line 1783
    if-eqz v0, :cond_0

    .line 1778
    nop

    .line 1783
    nop

    .line 2940
    .local v0, "it":Ljava/util/ArrayList;
    const/4 v1, 0x0

    .line 1783
    .local v1, "$i$a$-let-PermissionService$addAllowlistedRestrictedPermissionsUnchecked$newPermissionNames$1":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v3, v2

    .line 2940
    .local v3, "$this$addAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24108_u24lambda_u24107":Landroid/util/ArraySet;
    const/4 v4, 0x0

    .line 1783
    .local v4, "$i$a$-apply-PermissionService$addAllowlistedRestrictedPermissionsUnchecked$newPermissionNames$1$1":I
    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .end local v3    # "$this$addAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24108_u24lambda_u24107":Landroid/util/ArraySet;
    .end local v4    # "$i$a$-apply-PermissionService$addAllowlistedRestrictedPermissionsUnchecked$newPermissionNames$1$1":I
    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1778
    .end local v0    # "it":Ljava/util/ArrayList;
    .end local v1    # "$i$a$-let-PermissionService$addAllowlistedRestrictedPermissionsUnchecked$newPermissionNames$1":I
    if-eqz v0, :cond_0

    goto :goto_0

    .line 1783
    :cond_0
    move-object v0, p3

    .line 1778
    :goto_0
    nop

    .line 1777
    move-object v4, v0

    .line 1785
    .local v4, "newPermissionNames":Ljava/util/List;
    nop

    .line 1786
    nop

    .line 1787
    nop

    .line 1788
    nop

    .line 1789
    nop

    .line 1790
    nop

    .line 1785
    const/4 v5, 0x2

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v6, p4

    .end local p1    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local p2    # "appId":I
    .end local p4    # "userId":I
    .local v2, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .local v3, "appId":I
    .local v6, "userId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    .line 1792
    return-void
.end method

.method private final calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I
    .locals 16
    .param p1, "$this$calculatePermissionTreeFootprint"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "permissionTree"    # Lcom/android/server/permission/access/permission/Permission;

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "size":I
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .local v2, "$this$calculatePermissionTreeFootprint_u24lambda_u2440":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v3, 0x0

    .line 458
    .local v3, "$i$a$-with-PermissionService$calculatePermissionTreeFootprint$1":I
    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .local v5, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v6, 0x0

    .line 47
    .local v6, "$i$f$forEachIndexed":I
    const/4 v7, 0x0

    .local v7, "index$iv":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    .line 48
    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .local v10, "permission":Lcom/android/server/permission/access/permission/Permission;
    check-cast v9, Ljava/lang/String;

    const/4 v9, 0x0

    .line 459
    .local v9, "$i$a$-forEachIndexed-PermissionService$calculatePermissionTreeFootprint$1$1":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 460
    move-object v11, v10

    .local v11, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v12, 0x0

    .line 153
    .local v12, "$i$f$getFootprint":I
    move-object v13, v11

    .local v13, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v14, 0x0

    .line 33
    .local v14, "$i$f$getName":I
    invoke-virtual {v13}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    iget-object v13, v15, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 153
    .end local v13    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v14    # "$i$f$getName":I
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v14

    add-int/2addr v13, v14

    .line 460
    .end local v11    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v12    # "$i$f$getFootprint":I
    add-int/2addr v0, v13

    .line 462
    :cond_0
    nop

    .line 48
    .end local v9    # "$i$a$-forEachIndexed-PermissionService$calculatePermissionTreeFootprint$1$1":I
    .end local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    nop

    .line 47
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 50
    .end local v7    # "index$iv":I
    nop

    .line 463
    .end local v5    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v6    # "$i$f$forEachIndexed":I
    nop

    .line 457
    .end local v2    # "$this$calculatePermissionTreeFootprint_u24lambda_u2440":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v3    # "$i$a$-with-PermissionService$calculatePermissionTreeFootprint$1":I
    nop

    .line 464
    return v0
.end method

.method private final dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V
    .locals 45
    .param p1, "$this$dumpAppIdState"    # Landroid/util/IndentingPrintWriter;
    .param p2, "appId"    # I
    .param p3, "state"    # Lcom/android/server/permission/access/AccessState;
    .param p4, "packageNames"    # Lcom/android/server/permission/access/immutable/IndexedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "I",
            "Lcom/android/server/permission/access/AccessState;",
            "Lcom/android/server/permission/access/immutable/IndexedSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2218
    move/from16 v0, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2219
    move-object/from16 v1, p1

    .local v1, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v3, p0

    .local v3, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v4, 0x0

    .line 2283
    .local v4, "$i$f$withIndent":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object v5, v1

    .local v5, "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    const/4 v6, 0x0

    .line 2220
    .local v6, "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v7

    .local v7, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    const/4 v8, 0x0

    .line 44
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .local v9, "index$iv":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_b

    .line 45
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v11

    .local v11, "userId":I
    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/UserState;

    .local v12, "userState":Lcom/android/server/permission/access/UserState;
    const/4 v13, 0x0

    .line 2221
    .local v13, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "User: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2222
    move-object v14, v5

    .local v14, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v15, p0

    .local v15, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/16 v16, 0x0

    .line 2283
    .local v16, "$i$f$withIndent":I
    invoke-virtual {v14}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object/from16 v17, v14

    .local v17, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    const/16 v18, 0x0

    .line 2223
    .local v18, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1":I
    move-object/from16 v19, v1

    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v19, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    const-string v1, "Permissions:"

    move-object/from16 v2, v17

    .end local v17    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .local v2, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2224
    move-object v1, v2

    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v17, p0

    .local v17, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/16 v20, 0x0

    .line 2283
    .local v20, "$i$f$withIndent":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object/from16 v21, v1

    .local v21, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    const/16 v22, 0x0

    .line 2225
    .local v22, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$1":I
    move-object/from16 v23, v1

    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v23, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v12}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object/from16 v24, v1

    const-string v1, ", flags="

    move-object/from16 v25, v3

    .end local v3    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v25, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const-string v3, ": granted="

    if-eqz v24, :cond_1

    move-object/from16 v26, v24

    .local v26, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v24, 0x0

    .line 47
    .local v24, "$i$f$forEachIndexed":I
    const/16 v27, 0x0

    move/from16 v28, v4

    .end local v4    # "$i$f$withIndent":I
    .local v27, "index$iv":I
    .local v28, "$i$f$withIndent":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v4

    move-object/from16 v29, v5

    move/from16 v5, v27

    .end local v27    # "index$iv":I
    .local v5, "index$iv":I
    .local v29, "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    :goto_1
    if-ge v5, v4, :cond_0

    .line 48
    move/from16 v27, v4

    move-object/from16 v4, v26

    .end local v26    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v4, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Number;

    move-object/from16 v31, v4

    .end local v4    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v31, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Number;->intValue()I

    move-result v4

    .local v4, "flags":I
    check-cast v26, Ljava/lang/String;

    .local v26, "permissionName":Ljava/lang/String;
    move-object/from16 v30, v26

    .end local v26    # "permissionName":Ljava/lang/String;
    .local v30, "permissionName":Ljava/lang/String;
    const/16 v26, 0x0

    .line 2229
    .local v26, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$1$1":I
    move/from16 v32, v5

    .end local v5    # "index$iv":I
    .local v32, "index$iv":I
    sget-object v5, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v5

    .line 2230
    .local v5, "isGranted":Z
    nop

    .line 2231
    nop

    .line 2232
    move/from16 v33, v6

    .end local v6    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .local v33, "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v34, v4

    .end local v4    # "flags":I
    .local v34, "flags":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v7

    move-object/from16 v7, v30

    .end local v30    # "permissionName":Ljava/lang/String;
    .local v7, "permissionName":Ljava/lang/String;
    .local v35, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2230
    move-object/from16 v6, v21

    .end local v21    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .local v6, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v6, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2234
    nop

    .line 48
    .end local v5    # "isGranted":Z
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v26    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$1$1":I
    .end local v34    # "flags":I
    nop

    .line 47
    add-int/lit8 v5, v32, 0x1

    move/from16 v4, v27

    move-object/from16 v26, v31

    move/from16 v6, v33

    move-object/from16 v7, v35

    .end local v32    # "index$iv":I
    .local v5, "index$iv":I
    goto :goto_1

    .end local v31    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v33    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .end local v35    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .local v6, "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .local v7, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .restart local v21    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .local v26, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_0
    move/from16 v32, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move-object/from16 v6, v21

    move-object/from16 v31, v26

    .line 50
    .end local v5    # "index$iv":I
    .end local v7    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v21    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .end local v26    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v6, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .restart local v31    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v33    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .restart local v35    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    nop

    .end local v24    # "$i$f$forEachIndexed":I
    .end local v31    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    goto :goto_2

    .line 2225
    .end local v28    # "$i$f$withIndent":I
    .end local v29    # "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .end local v33    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .end local v35    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .local v4, "$i$f$withIndent":I
    .local v5, "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .local v6, "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .restart local v7    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .restart local v21    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    :cond_1
    move/from16 v28, v4

    move-object/from16 v29, v5

    move/from16 v33, v6

    move-object/from16 v35, v7

    move-object/from16 v6, v21

    .line 2235
    .end local v4    # "$i$f$withIndent":I
    .end local v5    # "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .end local v7    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v21    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .local v6, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .restart local v28    # "$i$f$withIndent":I
    .restart local v29    # "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .restart local v33    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .restart local v35    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :goto_2
    nop

    .line 2284
    .end local v6    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24161":Landroid/util/IndentingPrintWriter;
    .end local v22    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$1":I
    nop

    .line 2285
    invoke-virtual/range {v23 .. v23}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2237
    .end local v17    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v20    # "$i$f$withIndent":I
    .end local v23    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v12}, Lcom/android/server/permission/access/UserState;->getAppIdDevicePermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    nop

    if-eqz v4, :cond_4

    .local v4, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-virtual {v4}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v7

    :goto_3
    if-ge v6, v7, :cond_3

    .line 45
    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v20

    check-cast v20, Lcom/android/server/permission/access/immutable/IndexedMap;

    move-object/from16 v21, v4

    .end local v4    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .local v20, "devicePermissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v21, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    move-object/from16 v4, v17

    check-cast v4, Ljava/lang/String;

    .local v4, "deviceId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2241
    .local v17, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$2":I
    move/from16 v22, v5

    .end local v5    # "$i$f$forEachIndexed":I
    .local v22, "$i$f$forEachIndexed":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v6

    .end local v6    # "index$iv":I
    .local v23, "index$iv":I
    const-string v6, "Permissions (Device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    move-object v5, v2

    .local v5, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v6, p0

    .local v6, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/16 v24, 0x0

    .line 2283
    .local v24, "$i$f$withIndent":I
    invoke-virtual {v5}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object/from16 v26, v5

    .local v26, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    const/16 v27, 0x0

    .line 2243
    .local v27, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$2$1":I
    move-object/from16 v30, v20

    .local v30, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v31, 0x0

    .line 47
    .local v31, "$i$f$forEachIndexed":I
    const/16 v32, 0x0

    move-object/from16 v34, v4

    .end local v4    # "deviceId":Ljava/lang/String;
    .restart local v32    # "index$iv":I
    .local v34, "deviceId":Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v4

    move-object/from16 v36, v5

    move/from16 v5, v32

    .end local v32    # "index$iv":I
    .local v5, "index$iv":I
    .local v36, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    :goto_4
    if-ge v5, v4, :cond_2

    .line 48
    move/from16 v32, v4

    move-object/from16 v4, v30

    .end local v30    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v4, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v30

    invoke-virtual {v4, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/lang/Number;

    move-object/from16 v38, v4

    .end local v4    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v38, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Number;->intValue()I

    move-result v4

    move/from16 v37, v5

    .end local v5    # "index$iv":I
    .local v4, "flags":I
    .local v37, "index$iv":I
    move-object/from16 v5, v30

    check-cast v5, Ljava/lang/String;

    .local v5, "permissionName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 2244
    .local v30, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$2$1$1":I
    move-object/from16 v39, v6

    .end local v6    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v39, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v6

    .line 2245
    .local v6, "isGranted":Z
    nop

    .line 2246
    nop

    .line 2247
    move/from16 v40, v7

    sget-object v7, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/permission/PermissionFlags;->toString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v41, v4

    .end local v4    # "flags":I
    .local v41, "flags":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2245
    move-object/from16 v7, v26

    .end local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .local v7, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v7, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2249
    nop

    .line 48
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v6    # "isGranted":Z
    .end local v30    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$2$1$1":I
    .end local v41    # "flags":I
    nop

    .line 47
    add-int/lit8 v5, v37, 0x1

    move/from16 v4, v32

    move-object/from16 v30, v38

    move-object/from16 v6, v39

    move/from16 v7, v40

    .end local v37    # "index$iv":I
    .local v5, "index$iv":I
    goto :goto_4

    .end local v7    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .end local v38    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v39    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v6, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .local v30, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_2
    move/from16 v37, v5

    move-object/from16 v39, v6

    move/from16 v40, v7

    move-object/from16 v7, v26

    move-object/from16 v38, v30

    .line 50
    .end local v5    # "index$iv":I
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .end local v30    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v7    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .restart local v38    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v39    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    nop

    .line 2250
    .end local v31    # "$i$f$forEachIndexed":I
    .end local v38    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 2284
    .end local v7    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24164_u24lambda_u24163":Landroid/util/IndentingPrintWriter;
    .end local v27    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$2$1":I
    nop

    .line 2285
    invoke-virtual/range {v36 .. v36}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2251
    .end local v24    # "$i$f$withIndent":I
    .end local v36    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v39    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    nop

    .line 45
    .end local v17    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$2":I
    .end local v20    # "devicePermissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v34    # "deviceId":Ljava/lang/String;
    nop

    .line 44
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v4, v21

    move/from16 v5, v22

    move/from16 v7, v40

    .end local v23    # "index$iv":I
    .local v6, "index$iv":I
    goto/16 :goto_3

    .end local v21    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .end local v22    # "$i$f$forEachIndexed":I
    .local v4, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .local v5, "$i$f$forEachIndexed":I
    :cond_3
    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    .line 47
    .end local v4    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v6    # "index$iv":I
    .restart local v21    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .restart local v22    # "$i$f$forEachIndexed":I
    nop

    .line 2253
    .end local v21    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .end local v22    # "$i$f$forEachIndexed":I
    :cond_4
    const-string v1, "App ops:"

    invoke-virtual {v2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2254
    move-object v3, v2

    .local v3, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v5, 0x0

    .line 2283
    .local v5, "$i$f$withIndent":I
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object v6, v3

    .local v6, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24166":Landroid/util/IndentingPrintWriter;
    const/4 v7, 0x0

    .line 2255
    .local v7, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$3":I
    move-object/from16 v17, v3

    .end local v3    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v17, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v12}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v3

    check-cast v3, Lcom/android/server/permission/access/immutable/IndexedMap;

    const-string v0, ": mode="

    if-eqz v3, :cond_6

    .local v3, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v20, 0x0

    .line 47
    .local v20, "$i$f$forEachIndexed":I
    const/16 v21, 0x0

    move-object/from16 v22, v4

    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v21, "index$iv":I
    .local v22, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v4

    move/from16 v23, v5

    move/from16 v5, v21

    .end local v21    # "index$iv":I
    .local v5, "index$iv":I
    .local v23, "$i$f$withIndent":I
    :goto_5
    if-ge v5, v4, :cond_5

    .line 48
    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Number;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->intValue()I

    move-result v24

    .local v24, "appOpMode":I
    check-cast v21, Ljava/lang/String;

    .local v21, "appOpName":Ljava/lang/String;
    move-object/from16 v26, v21

    .end local v21    # "appOpName":Ljava/lang/String;
    .local v26, "appOpName":Ljava/lang/String;
    const/16 v21, 0x0

    .line 2257
    .local v21, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$3$1":I
    move-object/from16 v27, v3

    .end local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v27, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-static/range {v24 .. v24}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v30, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v5

    move-object/from16 v5, v26

    .end local v26    # "appOpName":Ljava/lang/String;
    .local v5, "appOpName":Ljava/lang/String;
    .local v31, "index$iv":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    nop

    .line 48
    .end local v5    # "appOpName":Ljava/lang/String;
    .end local v21    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$3$1":I
    .end local v24    # "appOpMode":I
    nop

    .line 47
    add-int/lit8 v5, v31, 0x1

    move-object/from16 v3, v27

    move/from16 v4, v30

    .end local v31    # "index$iv":I
    .local v5, "index$iv":I
    goto :goto_5

    .end local v27    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_5
    move-object/from16 v27, v3

    move/from16 v31, v5

    .line 50
    .end local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v5    # "index$iv":I
    .restart local v27    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .end local v20    # "$i$f$forEachIndexed":I
    .end local v27    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    goto :goto_6

    .line 2255
    .end local v22    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v23    # "$i$f$withIndent":I
    .restart local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v5, "$i$f$withIndent":I
    :cond_6
    move-object/from16 v22, v4

    move/from16 v23, v5

    .line 2259
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v5    # "$i$f$withIndent":I
    .restart local v22    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v23    # "$i$f$withIndent":I
    :goto_6
    nop

    .line 2284
    .end local v6    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24166":Landroid/util/IndentingPrintWriter;
    .end local v7    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$3":I
    nop

    .line 2285
    invoke-virtual/range {v17 .. v17}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2261
    .end local v17    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v22    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v23    # "$i$f$withIndent":I
    if-eqz p4, :cond_a

    move-object/from16 v3, p4

    .local v3, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v4, 0x0

    .line 44
    .local v4, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v6

    :goto_7
    if-ge v5, v6, :cond_9

    .line 45
    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "packageName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2262
    .local v17, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$4":I
    move-object/from16 v20, v3

    .end local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .local v20, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    .end local v4    # "$i$f$forEachIndexed":I
    .local v21, "$i$f$forEachIndexed":I
    const-string v4, "Package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2263
    move-object v3, v2

    .local v3, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v4, p0

    .local v4, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/16 v22, 0x0

    .line 2283
    .local v22, "$i$f$withIndent":I
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object/from16 v23, v3

    .local v23, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    const/16 v24, 0x0

    .line 2264
    .local v24, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$4$1":I
    move-object/from16 v26, v2

    .end local v2    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .local v26, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v12}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v3

    .end local v3    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v27, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v30, v4

    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v30, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const-string/jumbo v4, "version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v23

    .end local v23    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    .local v3, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2266
    move-object v2, v3

    .local v2, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v4, p0

    .restart local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/16 v23, 0x0

    .line 2283
    .local v23, "$i$f$withIndent":I
    invoke-virtual {v2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object/from16 v31, v2

    .local v31, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    const/16 v32, 0x0

    .line 2267
    .local v32, "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$4$1$1":I
    move-object/from16 v34, v1

    invoke-virtual {v12}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    if-eqz v1, :cond_8

    .local v1, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v36, 0x0

    .line 47
    .local v36, "$i$f$forEachIndexed":I
    const/16 v37, 0x0

    move-object/from16 v38, v2

    .end local v2    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v37    # "index$iv":I
    .local v38, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v2

    move-object/from16 v39, v3

    move/from16 v3, v37

    .end local v37    # "index$iv":I
    .local v3, "index$iv":I
    .local v39, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    :goto_8
    if-ge v3, v2, :cond_7

    .line 48
    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v37

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Number;

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Number;->intValue()I

    move-result v40

    move-object/from16 v41, v1

    .end local v1    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v40, "appOpMode":I
    .local v41, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object/from16 v1, v37

    check-cast v1, Ljava/lang/String;

    .local v1, "appOpName":Ljava/lang/String;
    const/16 v37, 0x0

    .line 2271
    .local v37, "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$4$1$1$1":I
    move/from16 v42, v2

    invoke-static/range {v40 .. v40}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v2

    .line 2272
    .local v2, "modeName":Ljava/lang/String;
    move/from16 v43, v3

    .end local v3    # "index$iv":I
    .local v43, "index$iv":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v44, v0

    move-object/from16 v0, v31

    .end local v31    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .local v0, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2273
    nop

    .line 48
    .end local v1    # "appOpName":Ljava/lang/String;
    .end local v2    # "modeName":Ljava/lang/String;
    .end local v37    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$4$1$1$1":I
    .end local v40    # "appOpMode":I
    nop

    .line 47
    add-int/lit8 v3, v43, 0x1

    move-object/from16 v1, v41

    move/from16 v2, v42

    move-object/from16 v0, v44

    .end local v43    # "index$iv":I
    .restart local v3    # "index$iv":I
    goto :goto_8

    .end local v0    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .end local v41    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v1, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v31    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    :cond_7
    move-object/from16 v44, v0

    move-object/from16 v41, v1

    move/from16 v43, v3

    move-object/from16 v0, v31

    .line 50
    .end local v1    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v3    # "index$iv":I
    .end local v31    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .restart local v0    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .restart local v41    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .end local v36    # "$i$f$forEachIndexed":I
    .end local v41    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    goto :goto_9

    .line 2267
    .end local v0    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .end local v38    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v39    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    .local v2, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v3, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    .restart local v31    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    :cond_8
    move-object/from16 v44, v0

    move-object/from16 v38, v2

    move-object/from16 v39, v3

    move-object/from16 v0, v31

    .line 2274
    .end local v2    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v3    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    .end local v31    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .restart local v0    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .restart local v38    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v39    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    :goto_9
    nop

    .line 2284
    .end local v0    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169_u24lambda_u24168":Landroid/util/IndentingPrintWriter;
    .end local v32    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$4$1$1":I
    nop

    .line 2285
    invoke-virtual/range {v38 .. v38}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2275
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v23    # "$i$f$withIndent":I
    .end local v38    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    nop

    .line 2284
    .end local v24    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1$4$1":I
    .end local v39    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171_u24lambda_u24170_u24lambda_u24169":Landroid/util/IndentingPrintWriter;
    nop

    .line 2285
    invoke-virtual/range {v27 .. v27}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2276
    .end local v22    # "$i$f$withIndent":I
    .end local v27    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v30    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    nop

    .line 45
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v17    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1$1$4":I
    nop

    .line 44
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v20

    move/from16 v4, v21

    move-object/from16 v2, v26

    move-object/from16 v1, v34

    move-object/from16 v0, v44

    goto/16 :goto_7

    .end local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v21    # "$i$f$forEachIndexed":I
    .end local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .local v2, "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .local v3, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .local v4, "$i$f$forEachIndexed":I
    :cond_9
    move-object/from16 v26, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    .line 47
    .end local v2    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .end local v3    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v4    # "$i$f$forEachIndexed":I
    .end local v5    # "index$iv":I
    .restart local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .restart local v21    # "$i$f$forEachIndexed":I
    .restart local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    nop

    .end local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v21    # "$i$f$forEachIndexed":I
    goto :goto_a

    .line 2261
    .end local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .restart local v2    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    :cond_a
    move-object/from16 v26, v2

    .line 2277
    .end local v2    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    .restart local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    :goto_a
    nop

    .line 2284
    .end local v18    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1$1$1":I
    .end local v26    # "$this$dumpAppIdState_u24lambda_u24173_u24lambda_u24172_u24lambda_u24171":Landroid/util/IndentingPrintWriter;
    nop

    .line 2285
    invoke-virtual {v14}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2278
    .end local v14    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v15    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v16    # "$i$f$withIndent":I
    nop

    .line 45
    .end local v11    # "userId":I
    .end local v12    # "userState":Lcom/android/server/permission/access/UserState;
    .end local v13    # "$i$a$-forEachIndexed-PermissionService$dumpAppIdState$1$1":I
    nop

    .line 44
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p1

    move/from16 v0, p2

    move-object/from16 v1, v19

    move-object/from16 v3, v25

    move/from16 v4, v28

    move-object/from16 v5, v29

    move/from16 v6, v33

    move-object/from16 v7, v35

    goto/16 :goto_0

    .end local v19    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v25    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v28    # "$i$f$withIndent":I
    .end local v29    # "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .end local v33    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .end local v35    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .local v1, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v3, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v4, "$i$f$withIndent":I
    .local v5, "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .local v6, "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    .local v7, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :cond_b
    move-object/from16 v19, v1

    .line 47
    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v9    # "index$iv":I
    .restart local v19    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    nop

    .line 2279
    .end local v7    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v8    # "$i$f$forEachIndexed":I
    nop

    .line 2284
    .end local v5    # "$this$dumpAppIdState_u24lambda_u24173":Landroid/util/IndentingPrintWriter;
    .end local v6    # "$i$a$-withIndent-PermissionService$dumpAppIdState$1":I
    nop

    .line 2285
    invoke-virtual/range {v19 .. v19}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2280
    .end local v3    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v4    # "$i$f$withIndent":I
    .end local v19    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    return-void
.end method

.method private final dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V
    .locals 21
    .param p1, "$this$dumpSystemState"    # Landroid/util/IndentingPrintWriter;
    .param p2, "state"    # Lcom/android/server/permission/access/AccessState;

    .line 2178
    move-object/from16 v0, p1

    const-string v1, "Permissions:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2179
    move-object/from16 v1, p1

    .local v1, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v2, p0

    .local v2, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v3, 0x0

    .line 2283
    .local v3, "$i$f$withIndent":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object v4, v1

    .local v4, "$this$dumpSystemState_u24lambda_u24155":Landroid/util/IndentingPrintWriter;
    const/4 v5, 0x0

    .line 2180
    .local v5, "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    .local v6, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$f$forEachIndexed":I
    const/4 v8, 0x0

    .local v8, "index$iv":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v9

    :goto_0
    const-string v10, ", appId="

    if-ge v8, v9, :cond_0

    .line 48
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    .local v12, "permission":Lcom/android/server/permission/access/permission/Permission;
    check-cast v11, Ljava/lang/String;

    const/4 v11, 0x0

    .line 2181
    .local v11, "$i$a$-forEachIndexed-PermissionService$dumpSystemState$1$1":I
    move-object v13, v12

    .local v13, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v14, 0x0

    .line 45
    .local v14, "$i$f$getProtectionLevel":I
    invoke-virtual {v13}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    iget v13, v15, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2181
    .end local v13    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v14    # "$i$f$getProtectionLevel":I
    invoke-static {v13}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v13

    .line 2182
    .local v13, "protectionLevel":Ljava/lang/String;
    nop

    .line 2183
    move-object v14, v12

    .local v14, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 33
    .local v15, "$i$f$getName":I
    move-object/from16 v16, v1

    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .local v16, "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2184
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getName":I
    sget-object v14, Lcom/android/server/permission/access/permission/Permission;->Companion:Lcom/android/server/permission/access/permission/Permission$Companion;

    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/permission/Permission$Companion;->typeToString(I)Ljava/lang/String;

    move-result-object v14

    .line 2185
    move-object v15, v12

    .local v15, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v17, 0x0

    .line 36
    .local v17, "$i$f$getPackageName":I
    move-object/from16 v18, v2

    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .local v18, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    invoke-virtual {v15}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2186
    .end local v15    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v17    # "$i$f$getPackageName":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v15

    .line 2187
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v17

    move/from16 v19, v3

    .end local v3    # "$i$f$withIndent":I
    .local v19, "$i$f$withIndent":I
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    move/from16 v17, v5

    .end local v5    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    .local v17, "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    const-string/jumbo v5, "toString(...)"

    invoke-static {v3, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2188
    nop

    .line 2189
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v5}, Landroid/content/pm/PermissionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v6

    .end local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v20, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": type="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gids="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", protectionLevel=["

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], flags="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2182
    invoke-virtual {v4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    nop

    .line 48
    .end local v11    # "$i$a$-forEachIndexed-PermissionService$dumpSystemState$1$1":I
    .end local v12    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v13    # "protectionLevel":Ljava/lang/String;
    nop

    .line 47
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    move/from16 v5, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v6, v20

    goto/16 :goto_0

    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v17    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    .end local v18    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v19    # "$i$f$withIndent":I
    .end local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v3    # "$i$f$withIndent":I
    .restart local v5    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    .restart local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_0
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v17, v5

    move-object/from16 v20, v6

    .line 50
    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v3    # "$i$f$withIndent":I
    .end local v5    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    .end local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v8    # "index$iv":I
    .restart local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v17    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    .restart local v18    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v19    # "$i$f$withIndent":I
    .restart local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 2192
    .end local v7    # "$i$f$forEachIndexed":I
    .end local v20    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 2284
    .end local v4    # "$this$dumpSystemState_u24lambda_u24155":Landroid/util/IndentingPrintWriter;
    .end local v17    # "$i$a$-withIndent-PermissionService$dumpSystemState$1":I
    nop

    .line 2285
    invoke-virtual/range {v16 .. v16}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2194
    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v18    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v19    # "$i$f$withIndent":I
    const-string v1, "Permission groups:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2195
    move-object/from16 v1, p1

    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v2, p0

    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v3, 0x0

    .line 2283
    .restart local v3    # "$i$f$withIndent":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object v4, v1

    .local v4, "$this$dumpSystemState_u24lambda_u24157":Landroid/util/IndentingPrintWriter;
    const/4 v5, 0x0

    .line 2196
    .local v5, "$i$a$-withIndent-PermissionService$dumpSystemState$2":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissionGroups()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    .restart local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v7, 0x0

    .line 47
    .restart local v7    # "$i$f$forEachIndexed":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v9

    :goto_1
    const-string v11, ": packageName="

    if-ge v8, v9, :cond_1

    .line 48
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PermissionGroupInfo;

    .local v13, "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    check-cast v12, Ljava/lang/String;

    const/4 v12, 0x0

    .line 2197
    .local v12, "$i$a$-forEachIndexed-PermissionService$dumpSystemState$2$1":I
    iget-object v14, v13, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    iget-object v15, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v1

    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2198
    nop

    .line 48
    .end local v12    # "$i$a$-forEachIndexed-PermissionService$dumpSystemState$2$1":I
    .end local v13    # "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    nop

    .line 47
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v16

    goto :goto_1

    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    :cond_1
    move-object/from16 v16, v1

    .line 50
    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v8    # "index$iv":I
    .restart local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    nop

    .line 2199
    .end local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v7    # "$i$f$forEachIndexed":I
    nop

    .line 2284
    .end local v4    # "$this$dumpSystemState_u24lambda_u24157":Landroid/util/IndentingPrintWriter;
    .end local v5    # "$i$a$-withIndent-PermissionService$dumpSystemState$2":I
    nop

    .line 2285
    invoke-virtual/range {v16 .. v16}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2201
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v3    # "$i$f$withIndent":I
    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    const-string v1, "Permission trees:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2202
    move-object/from16 v1, p1

    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    move-object/from16 v2, p0

    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v3, 0x0

    .line 2283
    .restart local v3    # "$i$f$withIndent":I
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2284
    move-object v4, v1

    .local v4, "$this$dumpSystemState_u24lambda_u24159":Landroid/util/IndentingPrintWriter;
    const/4 v5, 0x0

    .line 2203
    .local v5, "$i$a$-withIndent-PermissionService$dumpSystemState$3":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    .restart local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v7, 0x0

    .line 47
    .restart local v7    # "$i$f$forEachIndexed":I
    const/4 v8, 0x0

    .restart local v8    # "index$iv":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v9

    :goto_2
    if-ge v8, v9, :cond_2

    .line 48
    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/permission/Permission;

    .local v13, "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    check-cast v12, Ljava/lang/String;

    const/4 v12, 0x0

    .line 2204
    .local v12, "$i$a$-forEachIndexed-PermissionService$dumpSystemState$3$1":I
    nop

    .line 2205
    move-object v14, v13

    .restart local v14    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 33
    .local v15, "$i$f$getName":I
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2206
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getName":I
    nop

    .restart local v14    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 36
    .local v15, "$i$f$getPackageName":I
    move-object/from16 v16, v1

    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v14}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 2207
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getPackageName":I
    invoke-virtual {v13}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-virtual {v4, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2209
    nop

    .line 48
    .end local v12    # "$i$a$-forEachIndexed-PermissionService$dumpSystemState$3$1":I
    .end local v13    # "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    nop

    .line 47
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    goto :goto_2

    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .restart local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    :cond_2
    move-object/from16 v16, v1

    .line 50
    .end local v1    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    .end local v8    # "index$iv":I
    .restart local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    nop

    .line 2210
    .end local v6    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v7    # "$i$f$forEachIndexed":I
    nop

    .line 2284
    .end local v4    # "$this$dumpSystemState_u24lambda_u24159":Landroid/util/IndentingPrintWriter;
    .end local v5    # "$i$a$-withIndent-PermissionService$dumpSystemState$3":I
    nop

    .line 2285
    invoke-virtual/range {v16 .. v16}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2286
    nop

    .line 2211
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v3    # "$i$f$withIndent":I
    .end local v16    # "$this$withIndent$iv":Landroid/util/IndentingPrintWriter;
    return-void
.end method

.method private final varargs enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "permissionNames"    # [Ljava/lang/String;

    .line 2683
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .local v1, "$this$any$iv":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 3436
    .local v2, "$i$f$any":I
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v1, v5

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "permissionName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 2684
    .local v8, "$i$a$-any-PermissionService$enforceCallingOrSelfAnyPermission$hasAnyPermission$1":I
    move-object/from16 v9, p0

    iget-object v10, v9, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x1

    if-nez v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    move v10, v4

    .line 2685
    :goto_1
    nop

    .line 3436
    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v8    # "$i$a$-any-PermissionService$enforceCallingOrSelfAnyPermission$hasAnyPermission$1":I
    if-eqz v10, :cond_1

    move v4, v11

    goto :goto_2

    .end local v6    # "element$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3437
    :cond_2
    move-object/from16 v9, p0

    .line 2683
    .end local v1    # "$this$any$iv":[Ljava/lang/Object;
    .end local v2    # "$i$f$any":I
    :goto_2
    nop

    .line 2682
    nop

    .line 2687
    .local v4, "hasAnyPermission":Z
    if-nez v4, :cond_4

    .line 2688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v1

    .local v11, "$this$enforceCallingOrSelfAnyPermission_u24lambda_u24208":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 2689
    .local v2, "$i$a$-buildString-PermissionService$enforceCallingOrSelfAnyPermission$exceptionMessage$1":I
    if-eqz v0, :cond_3

    .line 2690
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2691
    const-string v3, ": "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2693
    :cond_3
    const-string v3, "Neither user "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2695
    const-string v3, " nor current process has any of "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2696
    const/16 v18, 0x7c

    const/16 v19, 0x0

    const-string v12, ", "

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p2

    invoke-static/range {v10 .. v19}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->joinTo$default([Ljava/lang/Object;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/Appendable;

    .line 2697
    nop

    .line 2688
    .end local v2    # "$i$a$-buildString-PermissionService$enforceCallingOrSelfAnyPermission$exceptionMessage$1":I
    .end local v11    # "$this$enforceCallingOrSelfAnyPermission_u24lambda_u24208":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2698
    .local v1, "exceptionMessage":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2700
    .end local v1    # "exceptionMessage":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private final enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V
    .locals 7
    .param p1, "userId"    # I
    .param p2, "enforceFullPermission"    # Z
    .param p3, "enforceShellRestriction"    # Z
    .param p4, "message"    # Ljava/lang/String;

    .line 2623
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2624
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2625
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2626
    .local v1, "callingUserId":I
    const-string v2, ": "

    if-eq p1, v1, :cond_3

    .line 2628
    if-eqz p2, :cond_1

    .line 2629
    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    goto :goto_1

    .line 2631
    :cond_1
    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 2628
    :goto_1
    nop

    .line 2627
    nop

    .line 2633
    .local v3, "permissionName":Ljava/lang/String;
    nop

    .line 2634
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 2637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v4

    .local v5, "$this$enforceCallingOrSelfCrossUserPermission_u24lambda_u24205":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 2638
    .local v6, "$i$a$-buildString-PermissionService$enforceCallingOrSelfCrossUserPermission$exceptionMessage$1":I
    if-eqz p4, :cond_2

    .line 2639
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2640
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2642
    :cond_2
    const-string v2, "Neither user "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2643
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2644
    const-string v2, " nor current process has "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2646
    const-string v2, " to access user "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2647
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2648
    nop

    .line 2637
    .end local v5    # "$this$enforceCallingOrSelfCrossUserPermission_u24lambda_u24205":Ljava/lang/StringBuilder;
    .end local v6    # "$i$a$-buildString-PermissionService$enforceCallingOrSelfCrossUserPermission$exceptionMessage$1":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2649
    .local v2, "exceptionMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2652
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    .end local v3    # "permissionName":Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_6

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/permission/PermissionService;->isShellUid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2654
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v3, :cond_4

    const-string/jumbo v3, "userManagerInternal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 2655
    :cond_4
    nop

    .line 2656
    nop

    .line 2654
    const-string/jumbo v4, "no_debugging_features"

    invoke-virtual {v3, v4, p1}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v3

    .line 2653
    nop

    .line 2658
    .local v3, "isShellRestricted":Z
    if-eqz v3, :cond_6

    .line 2659
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v4

    .local v5, "$this$enforceCallingOrSelfCrossUserPermission_u24lambda_u24206":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 2660
    .local v6, "$i$a$-buildString-PermissionService$enforceCallingOrSelfCrossUserPermission$exceptionMessage$2":I
    if-eqz p4, :cond_5

    .line 2661
    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2662
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    :cond_5
    const-string v2, "Shell is disallowed to access user "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2665
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2666
    nop

    .line 2659
    .end local v5    # "$this$enforceCallingOrSelfCrossUserPermission_u24lambda_u24206":Ljava/lang/StringBuilder;
    .end local v6    # "$i$a$-buildString-PermissionService$enforceCallingOrSelfCrossUserPermission$exceptionMessage$2":I
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2667
    .restart local v2    # "exceptionMessage":Ljava/lang/String;
    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2670
    .end local v2    # "exceptionMessage":Ljava/lang/String;
    .end local v3    # "isShellRestricted":Z
    :cond_6
    return-void

    .line 2940
    .end local v0    # "callingUid":I
    .end local v1    # "callingUserId":I
    :cond_7
    const/4 v0, 0x0

    .line 2623
    .local v0, "$i$a$-require-PermissionService$enforceCallingOrSelfCrossUserPermission$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "$i$a$-require-PermissionService$enforceCallingOrSelfCrossUserPermission$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final enforcePermissionTreeSize(Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V
    .locals 3
    .param p1, "$this$enforcePermissionTreeSize"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p3, "permissionTree"    # Lcom/android/server/permission/access/permission/Permission;

    .line 444
    invoke-virtual {p3}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 445
    invoke-direct {p0, p1, p3}, Lcom/android/server/permission/access/permission/PermissionService;->calculatePermissionTreeFootprint(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/permission/access/permission/Permission;)I

    move-result v0

    .line 446
    .local v0, "permissionTreeFootprint":I
    nop

    .line 447
    invoke-virtual {p2}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    .line 448
    nop

    .line 447
    const v2, 0x8000

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    .end local v0    # "permissionTreeFootprint":I
    :cond_1
    :goto_0
    return-void
.end method

.method private final enforceRestrictedPermission(Ljava/lang/String;)Z
    .locals 9
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1823
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-direct {v2, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$enforceRestrictedPermission_u24lambda_u24111":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 1823
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$enforceRestrictedPermission$permission$1":I
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$enforceRestrictedPermission_u24lambda_u24111_u24lambda_u24110":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v6, 0x0

    .line 1823
    .local v6, "$i$a$-with-PermissionService$enforceRestrictedPermission$permission$1$1":I
    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v2    # "$this$enforceRestrictedPermission_u24lambda_u24111":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$enforceRestrictedPermission$permission$1":I
    .end local v5    # "$this$enforceRestrictedPermission_u24lambda_u24111_u24lambda_u24110":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v6    # "$i$a$-with-PermissionService$enforceRestrictedPermission$permission$1$1":I
    nop

    .line 1823
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 1824
    .local v7, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/4 v0, 0x0

    if-nez v7, :cond_1

    .line 1825
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "permission definition for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    return v0

    .line 1829
    :cond_1
    nop

    .line 1830
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v1, :cond_2

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_2
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v1

    move-object v2, v1

    .local v2, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v3, 0x0

    .line 1831
    .local v3, "$i$a$-use-PermissionService$enforceRestrictedPermission$1":I
    move-object v5, v7

    .local v5, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$f$getPackageName":I
    :try_start_0
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 1831
    .end local v5    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$getPackageName":I
    invoke-interface {v2, v8}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1830
    .end local v2    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v3    # "$i$a$-use-PermissionService$enforceRestrictedPermission$1":I
    invoke-static {v1, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3

    .line 1834
    return v0

    .line 1838
    :cond_3
    move-object v1, v7

    .local v1, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 141
    .local v2, "$i$f$isHardOrSoftRestricted":I
    move-object v3, v1

    .local v3, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$isHardRestricted":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PermissionInfo;->flags:I

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    .line 141
    .end local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "$i$f$isHardRestricted":I
    const/4 v4, 0x1

    if-nez v3, :cond_4

    move-object v3, v1

    .restart local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x0

    .line 138
    .local v5, "$i$f$isSoftRestricted":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v8, 0x8

    invoke-static {v6, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    .line 141
    .end local v3    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v5    # "$i$f$isSoftRestricted":I
    if-eqz v3, :cond_5

    :cond_4
    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    :goto_0
    move v1, v4

    .line 1838
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isHardOrSoftRestricted":I
    :goto_1
    if-eqz v1, :cond_6

    move-object v1, v7

    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 144
    .local v2, "$i$f$isImmutablyRestricted":I
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/16 v5, 0x10

    invoke-static {v3, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    .line 1838
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isImmutablyRestricted":I
    if-eqz v1, :cond_6

    move v0, v4

    .line 1837
    :cond_6
    nop

    .line 1839
    .local v0, "isImmutablyRestrictedPermission":Z
    nop

    .line 1840
    if-eqz v0, :cond_8

    .line 1841
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1842
    nop

    .line 1841
    const-string v2, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    .line 1845
    :cond_7
    new-instance v1, Ljava/lang/SecurityException;

    .line 1846
    move-object v2, v7

    .local v2, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 33
    .local v3, "$i$f$getName":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$f$getName":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot modify allowlist of an immutably restricted permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1845
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1850
    :cond_8
    :goto_2
    return v4

    .line 1830
    .end local v0    # "isImmutablyRestrictedPermission":Z
    :catchall_0
    move-exception v0

    .end local v7    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionName":Ljava/lang/String;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v7    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionName":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 1
    .param p1, "$this$filtered"    # Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2608
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->filtered(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    return-object v0
.end method

.method private final generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4
    .param p1, "$this$generatePermissionGroupInfo"    # Landroid/content/pm/PermissionGroupInfo;
    .param p2, "flags"    # I

    .line 222
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    move-object v1, v0

    .local v1, "$this$generatePermissionGroupInfo_u24lambda_u248":Landroid/content/pm/PermissionGroupInfo;
    const/4 v2, 0x0

    .line 223
    .local v2, "$i$a$-apply-PermissionService$generatePermissionGroupInfo$1":I
    const/16 v3, 0x80

    invoke-static {p2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 226
    :cond_0
    nop

    .line 222
    .end local v1    # "$this$generatePermissionGroupInfo_u24lambda_u248":Landroid/content/pm/PermissionGroupInfo;
    .end local v2    # "$i$a$-apply-PermissionService$generatePermissionGroupInfo$1":I
    nop

    .line 226
    return-object v0
.end method

.method private final generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;
    .locals 5
    .param p1, "$this$generatePermissionInfo"    # Lcom/android/server/permission/access/permission/Permission;
    .param p2, "flags"    # I
    .param p3, "targetSdkVersion"    # I

    .line 268
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    move-object v1, v0

    .local v1, "$this$generatePermissionInfo_u24lambda_u2412":Landroid/content/pm/PermissionInfo;
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$a$-apply-PermissionService$generatePermissionInfo$1":I
    iget v3, v1, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, v1, Landroid/content/pm/PermissionInfo;->flags:I

    .line 272
    const/16 v3, 0x80

    invoke-static {p2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 273
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 275
    :cond_0
    const/16 v3, 0x1a

    if-ge p3, v3, :cond_1

    .line 276
    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    .line 278
    .local v3, "protection":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 279
    iput v3, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 282
    .end local v3    # "protection":I
    :cond_1
    nop

    .line 268
    .end local v1    # "$this$generatePermissionInfo_u24lambda_u2412":Landroid/content/pm/PermissionInfo;
    .end local v2    # "$i$a$-apply-PermissionService$generatePermissionInfo$1":I
    nop

    .line 282
    return-object v0
.end method

.method static synthetic generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;
    .locals 0

    .line 263
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 265
    const/16 p3, 0x2710

    .line 263
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method private final getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;
    .locals 18
    .param p1, "state"    # Lcom/android/server/permission/access/AccessState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/access/AccessState;",
            ")",
            "Lcom/android/server/permission/access/immutable/IndexedMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/permission/access/immutable/MutableIndexedSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2144
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v3, v0

    .line 2146
    .local v3, "appIds":Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    move-object/from16 v4, p0

    iget-object v0, v4, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v5

    move-object v0, v5

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v6, 0x0

    .line 2146
    .local v6, "$i$a$-use-PermissionService$getAllAppIdPackageNames$packageStates$1":I
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getAllAppIdPackageNames$packageStates$1":I
    invoke-static {v5, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 2147
    .local v7, "packageStates":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v0

    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    const/4 v5, 0x0

    .line 44
    .local v5, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv":I
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v8

    :goto_0
    if-ge v6, v8, :cond_7

    .line 45
    invoke-virtual {v0, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    invoke-virtual {v0, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/UserState;

    .local v9, "userState":Lcom/android/server/permission/access/UserState;
    const/4 v10, 0x0

    .line 2148
    .local v10, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v11

    .local v11, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    const/4 v12, 0x0

    .line 44
    .local v12, "$i$f$forEachIndexed":I
    const/4 v13, 0x0

    .local v13, "index$iv":I
    invoke-virtual {v11}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v14

    :goto_1
    if-ge v13, v14, :cond_1

    .line 45
    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v15

    .local v15, "appId":I
    invoke-virtual {v11, v13}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v16

    check-cast v16, Lcom/android/server/permission/access/immutable/IndexedMap;

    const/16 v16, 0x0

    .line 2148
    .local v16, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$1":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v15    # "appId":I
    .end local v16    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$1":I
    nop

    .line 44
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    nop

    .line 47
    .end local v13    # "index$iv":I
    nop

    .line 2149
    .end local v11    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v12    # "$i$f$forEachIndexed":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/UserState;->getAppIdAppOpModes()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    .local v1, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    const/4 v11, 0x0

    .line 44
    .local v11, "$i$f$forEachIndexed":I
    const/4 v12, 0x0

    .local v12, "index$iv":I
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v13

    :goto_2
    if-ge v12, v13, :cond_2

    .line 45
    invoke-virtual {v1, v12}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v14

    .local v14, "appId":I
    invoke-virtual {v1, v12}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v15

    check-cast v15, Lcom/android/server/permission/access/immutable/IndexedMap;

    const/4 v15, 0x0

    .line 2149
    .local v15, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$2":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 45
    .end local v14    # "appId":I
    .end local v15    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$2":I
    nop

    .line 44
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    nop

    .line 47
    .end local v12    # "index$iv":I
    nop

    .line 2150
    .end local v1    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v11    # "$i$f$forEachIndexed":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/UserState;->getPackageVersions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    .local v1, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .local v11, "index$iv":I
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v12

    :goto_3
    if-ge v11, v12, :cond_4

    .line 48
    invoke-virtual {v1, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 2151
    .local v14, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$3":I
    invoke-interface {v7, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v15, :cond_3

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v15

    .line 2152
    .local v15, "appId":I
    move-object/from16 v17, v0

    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .local v17, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 2153
    goto :goto_4

    .line 2151
    .end local v15    # "appId":I
    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .restart local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :cond_3
    move-object/from16 v17, v0

    .line 48
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$3":I
    .restart local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :goto_4
    nop

    .line 47
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v17

    goto :goto_3

    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .restart local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :cond_4
    move-object/from16 v17, v0

    .line 50
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v11    # "index$iv":I
    .restart local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    nop

    .line 2154
    .end local v1    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v2    # "$i$f$forEachIndexed":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/UserState;->getPackageAppOpModes()Lcom/android/server/permission/access/immutable/IndexedReferenceMap;

    move-result-object v0

    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getSize()I

    move-result v11

    :goto_5
    if-ge v2, v11, :cond_6

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/IndexedMap;

    check-cast v12, Ljava/lang/String;

    .local v12, "packageName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 2155
    .local v13, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$4":I
    invoke-interface {v7, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    nop

    if-eqz v14, :cond_5

    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v14

    .line 2156
    .local v14, "appId":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 2157
    nop

    .line 45
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1$4":I
    .end local v14    # "appId":I
    :cond_5
    nop

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    nop

    .line 47
    .end local v2    # "index$iv":I
    nop

    .line 2158
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
    .end local v1    # "$i$f$forEachIndexed":I
    nop

    .line 45
    .end local v9    # "userState":Lcom/android/server/permission/access/UserState;
    .end local v10    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$1":I
    nop

    .line 44
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto/16 :goto_0

    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    :cond_7
    move-object/from16 v17, v0

    .line 47
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    .end local v6    # "index$iv":I
    .restart local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    nop

    .line 2160
    .end local v5    # "$i$f$forEachIndexed":I
    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IntReferenceMap;
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2161
    .local v0, "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    move-object v1, v7

    .local v1, "$this$forEach$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 3268
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 2161
    .local v8, "$i$a$-forEach-PermissionService$getAllAppIdPackageNames$2":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/PackageState;

    .line 2162
    .local v9, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2163
    move-object/from16 v17, v0

    goto :goto_8

    .line 2165
    :cond_8
    nop

    .line 2166
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .local v10, "key$iv":Ljava/lang/Object;
    move-object v11, v0

    .local v11, "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    const/4 v12, 0x0

    .line 93
    .local v12, "$i$f$getOrPut":I
    invoke-virtual {v11, v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_9

    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 94
    .local v14, "$i$a$-let-IndexedMapExtensionsKt$getOrPut$1$iv":I
    move-object/from16 v17, v0

    goto :goto_7

    .line 96
    .end local v13    # "it$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-IndexedMapExtensionsKt$getOrPut$1$iv":I
    :cond_9
    const/4 v13, 0x0

    .line 2166
    .local v13, "$i$a$-getOrPut-PermissionService$getAllAppIdPackageNames$2$1":I
    new-instance v14, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    const/4 v15, 0x0

    .end local v0    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v17, "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    invoke-direct {v14, v15, v0, v15}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .end local v13    # "$i$a$-getOrPut-PermissionService$getAllAppIdPackageNames$2$1":I
    move-object v0, v14

    .line 3273
    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 96
    .local v13, "$i$a$-also-IndexedMapExtensionsKt$getOrPut$2$iv":I
    invoke-virtual {v11, v10, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v14

    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v10    # "key$iv":Ljava/lang/Object;
    .end local v11    # "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v12    # "$i$f$getOrPut":I
    .end local v13    # "$i$a$-also-IndexedMapExtensionsKt$getOrPut$2$iv":I
    :goto_7
    check-cast v13, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .line 2167
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;->add(Ljava/lang/Object;)Z

    .line 2168
    nop

    .line 3268
    .end local v8    # "$i$a$-forEach-PermissionService$getAllAppIdPackageNames$2":I
    .end local v9    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :goto_8
    move-object/from16 v0, v17

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_6

    .line 3274
    .end local v17    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .local v0, "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    :cond_a
    move-object/from16 v17, v0

    .line 2170
    .end local v0    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v1    # "$this$forEach$iv":Ljava/util/Map;
    .end local v2    # "$i$f$forEach":I
    .restart local v17    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    move-object v0, v3

    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    const/4 v1, 0x0

    .line 44
    .local v1, "$i$f$forEachIndexed":I
    const/4 v2, 0x0

    .local v2, "index$iv":I
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSize()I

    move-result v5

    :goto_9
    if-ge v2, v5, :cond_c

    .line 45
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedSet;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "appId":I
    const/4 v8, 0x0

    .line 2171
    .local v8, "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$3":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .local v9, "key$iv":Ljava/lang/Object;
    move-object/from16 v10, v17

    .local v10, "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    const/4 v11, 0x0

    .line 93
    .local v11, "$i$f$getOrPut":I
    invoke-virtual {v10, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_b

    .local v12, "it$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 94
    .local v13, "$i$a$-let-IndexedMapExtensionsKt$getOrPut$1$iv":I
    const/4 v14, 0x1

    const/4 v15, 0x0

    goto :goto_a

    .line 96
    .end local v12    # "it$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-let-IndexedMapExtensionsKt$getOrPut$1$iv":I
    :cond_b
    const/4 v12, 0x0

    .line 2171
    .local v12, "$i$a$-getOrPut-PermissionService$getAllAppIdPackageNames$3$1":I
    new-instance v13, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v13, v15, v14, v15}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 96
    .end local v12    # "$i$a$-getOrPut-PermissionService$getAllAppIdPackageNames$3$1":I
    nop

    .line 3281
    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 96
    .local v12, "$i$a$-also-IndexedMapExtensionsKt$getOrPut$2$iv":I
    invoke-virtual {v10, v9, v13}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    .end local v9    # "key$iv":Ljava/lang/Object;
    .end local v10    # "$this$getOrPut$iv":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    .end local v11    # "$i$f$getOrPut":I
    .end local v12    # "$i$a$-also-IndexedMapExtensionsKt$getOrPut$2$iv":I
    .end local v13    # "it$iv":Ljava/lang/Object;
    :goto_a
    nop

    .line 45
    .end local v6    # "appId":I
    .end local v8    # "$i$a$-forEachIndexed-PermissionService$getAllAppIdPackageNames$3":I
    nop

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    nop

    .line 47
    .end local v2    # "index$iv":I
    nop

    .line 2174
    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedSet;
    .end local v1    # "$i$f$forEachIndexed":I
    return-object v17

    .line 2146
    .end local v7    # "packageStates":Ljava/util/Map;
    .end local v17    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/MutableIndexedMap;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v3    # "appIds":Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "state":Lcom/android/server/permission/access/AccessState;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "appIds":Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "state":Lcom/android/server/permission/access/AccessState;
    :catchall_1
    move-exception v0

    invoke-static {v5, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;
    .locals 21
    .param p1, "appId"    # I
    .param p2, "allowlistedFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1724
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v6

    :cond_0
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v4, "$this$getAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24104":Lcom/android/server/permission/access/GetStateScope;
    const/4 v5, 0x0

    .line 1724
    .local v5, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$permissionFlags$1":I
    iget-object v7, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v7, "$this$getAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24104_u24lambda_u24103":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 1724
    .local v8, "$i$a$-with-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$permissionFlags$1$1":I
    move/from16 v9, p1

    move/from16 v10, p3

    invoke-virtual {v7, v4, v9, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 287
    .end local v4    # "$this$getAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24104":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$permissionFlags$1":I
    .end local v7    # "$this$getAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24104_u24lambda_u24103":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$permissionFlags$1$1":I
    nop

    .line 1724
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v7, :cond_1

    .line 1725
    return-object v6

    .line 1724
    :cond_1
    nop

    .line 1723
    nop

    .line 1727
    .local v7, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v2, 0x0

    .line 1728
    .local v2, "queryFlags":I
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1729
    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    .line 1731
    :cond_2
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1732
    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    .line 1734
    :cond_3
    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1735
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 1738
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "destination$iv":Ljava/util/Collection;
    move-object v4, v7

    .local v4, "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v5, 0x0

    .line 88
    .local v5, "$i$f$mapNotNullIndexedTo":I
    move-object v8, v4

    .local v8, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$f$forEachIndexed":I
    const/4 v12, 0x0

    .local v12, "index$iv$iv":I
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v13

    :goto_0
    if-ge v12, v13, :cond_7

    .line 48
    invoke-virtual {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    .local v14, "key$iv":Ljava/lang/Object;
    invoke-virtual {v8, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    .local v15, "value$iv":Ljava/lang/Object;
    move/from16 v16, v12

    .local v16, "index$iv":I
    const/16 v17, 0x0

    .line 88
    .local v17, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    move-result v6

    .local v6, "flags":I
    move-object/from16 v18, v14

    check-cast v18, Ljava/lang/String;

    .local v18, "permissionName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1739
    .local v19, "$i$a$-mapNotNullIndexedTo-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$1":I
    invoke-static {v6, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v20

    if-eqz v20, :cond_5

    goto :goto_1

    :cond_5
    const/16 v18, 0x0

    .line 88
    .end local v6    # "flags":I
    .end local v18    # "permissionName":Ljava/lang/String;
    .end local v19    # "$i$a$-mapNotNullIndexedTo-PermissionService$getAllowlistedRestrictedPermissionsUnchecked$1":I
    :goto_1
    nop

    nop

    if-eqz v18, :cond_6

    move-object/from16 v6, v18

    .line 3148
    .local v6, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 88
    .local v18, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v6    # "it$iv":Ljava/lang/Object;
    .end local v14    # "key$iv":Ljava/lang/Object;
    .end local v15    # "value$iv":Ljava/lang/Object;
    .end local v16    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    .end local v18    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    :cond_6
    nop

    .line 47
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_7
    nop

    .line 50
    .end local v12    # "index$iv$iv":I
    nop

    .line 89
    .end local v8    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v11    # "$i$f$forEachIndexed":I
    nop

    .line 1738
    .end local v3    # "destination$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v5    # "$i$f$mapNotNullIndexedTo":I
    return-object v3
.end method

.method private final getAndEnforcePermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;
    .locals 5
    .param p1, "$this$getAndEnforcePermissionTree"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 428
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v1, "$this$getAndEnforcePermissionTree_u24lambda_u2438":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v2, 0x0

    .line 428
    .local v2, "$i$a$-with-PermissionService$getAndEnforcePermissionTree$permissionTree$1":I
    invoke-virtual {v1, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->findPermissionTree(Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v1

    .line 429
    .end local v2    # "$i$a$-with-PermissionService$getAndEnforcePermissionTree$permissionTree$1":I
    .local v1, "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 430
    return-object v1

    .line 433
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed to add to or remove from the permission tree"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private final getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;
    .locals 1
    .param p1, "$this$getPackageState"    # Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2582
    invoke-interface {p1}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageState;

    return-object v0
.end method

.method private final getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "$this$getPermissionFlagsWithPolicy"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;

    .line 1668
    nop

    .line 1669
    nop

    .line 1670
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1672
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v0, "$this$getPermissionFlagsWithPolicy_u24lambda_u2497":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v1, 0x0

    .line 1672
    .local v1, "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$1":I
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object v4, p5

    .end local v0    # "$this$getPermissionFlagsWithPolicy_u24lambda_u2497":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v1    # "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$1":I
    goto :goto_0

    .line 1674
    :cond_0
    sget-object v0, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1676
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not device aware permission,  get the flags for default device."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1675
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v0, "$this$getPermissionFlagsWithPolicy_u24lambda_u2498":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v1, 0x0

    .line 1680
    .local v1, "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$2":I
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;)I

    move-result v0

    .end local v0    # "$this$getPermissionFlagsWithPolicy_u24lambda_u2498":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v1    # "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$2":I
    return v0

    .line 1682
    :cond_1
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .line 2940
    .local v1, "$this$getPermissionFlagsWithPolicy_u24lambda_u2499":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 v0, 0x0

    .line 1682
    .local v0, "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$3":I
    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    move-object v4, p5

    .end local p1    # "$this$getPermissionFlagsWithPolicy":Lcom/android/server/permission/access/GetStateScope;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .end local p5    # "deviceId":Ljava/lang/String;
    .local v2, "$this$getPermissionFlagsWithPolicy":Lcom/android/server/permission/access/GetStateScope;
    .local v3, "appId":I
    .local v4, "deviceId":Ljava/lang/String;
    .local v5, "userId":I
    .local v6, "permissionName":Ljava/lang/String;
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 1668
    .end local v0    # "$i$a$-with-PermissionService$getPermissionFlagsWithPolicy$3":I
    .end local v1    # "$this$getPermissionFlagsWithPolicy_u24lambda_u2499":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    :goto_0
    return v0
.end method

.method private final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "$this$isPackageVisibleToUid"    # Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 2595
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private final isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;II)Z
    .locals 4
    .param p1, "$this$isPackageVisibleToUid"    # Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 2602
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    move-object v1, v0

    .line 2940
    .local v1, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v2, 0x0

    .line 2602
    .local v2, "$i$a$-use-PermissionService$isPackageVisibleToUid$1":I
    :try_start_0
    invoke-interface {v1, p2}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v2    # "$i$a$-use-PermissionService$isPackageVisibleToUid$1":I
    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v3

    :catchall_0
    move-exception v1

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "$this$isPackageVisibleToUid":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "userId":I
    .end local p4    # "uid":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "$this$isPackageVisibleToUid":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "userId":I
    .restart local p4    # "uid":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "$this$isPermissionGranted"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;

    .line 633
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 636
    .local v2, "appId":I
    invoke-interface {p2, p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    .line 637
    .local v4, "isInstantApp":Z
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "$this$isPermissionGranted":Lcom/android/server/permission/access/GetStateScope;
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .end local p5    # "deviceId":Ljava/lang/String;
    .local v1, "$this$isPermissionGranted":Lcom/android/server/permission/access/GetStateScope;
    .local v3, "userId":I
    .local v5, "permissionName":Ljava/lang/String;
    .local v6, "deviceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    move-object p3, v5

    .end local v5    # "permissionName":Ljava/lang/String;
    .local p3, "permissionName":Ljava/lang/String;
    const/4 p4, 0x1

    if-eqz p1, :cond_0

    .line 638
    return p4

    .line 641
    :cond_0
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 642
    .local v5, "fullerPermissionName":Ljava/lang/String;
    nop

    .line 643
    if-eqz v5, :cond_1

    .line 644
    nop

    .line 645
    nop

    .line 646
    nop

    .line 647
    nop

    .line 648
    nop

    .line 649
    nop

    .line 644
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 652
    return p4

    .line 655
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final isRootOrSystemOrShellUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2542
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/permission/access/permission/PermissionService;->isShellUid(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final isRootOrSystemUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 2532
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2535
    const/4 v0, 0x0

    goto :goto_0

    .line 2534
    :sswitch_0
    const/4 v0, 0x1

    .line 2536
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method private final isShellUid(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 2539
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isSinglePermissionGranted(Lcom/android/server/permission/access/GetStateScope;IIZLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "$this$isSinglePermissionGranted"    # Lcom/android/server/permission/access/GetStateScope;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "isInstantApp"    # Z
    .param p5, "permissionName"    # Ljava/lang/String;
    .param p6, "deviceId"    # Ljava/lang/String;

    .line 666
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p6

    .end local p1    # "$this$isSinglePermissionGranted":Lcom/android/server/permission/access/GetStateScope;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p5    # "permissionName":Ljava/lang/String;
    .end local p6    # "deviceId":Ljava/lang/String;
    .local v1, "$this$isSinglePermissionGranted":Lcom/android/server/permission/access/GetStateScope;
    .local v2, "appId":I
    .local v3, "userId":I
    .local v4, "permissionName":Ljava/lang/String;
    .local v5, "deviceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 667
    .local p1, "flags":I
    sget-object p2, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {p2, p1}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 668
    return p3

    .line 671
    :cond_0
    if-eqz p4, :cond_2

    .line 672
    iget-object p2, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local p2, "$this$isSinglePermissionGranted_u24lambda_u2449":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 p5, 0x0

    .line 672
    .local p5, "$i$a$-with-PermissionService$isSinglePermissionGranted$permission$1":I
    invoke-virtual {p2, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p6

    invoke-virtual {p6, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/permission/access/permission/Permission;

    .end local p2    # "$this$isSinglePermissionGranted_u24lambda_u2449":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local p5    # "$i$a$-with-PermissionService$isSinglePermissionGranted$permission$1":I
    if-nez p6, :cond_1

    return p3

    .line 673
    .local p6, "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_1
    move-object p2, p6

    .local p2, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 p5, 0x0

    .line 87
    .local p5, "$i$f$isInstant":I
    move-object v6, p2

    .local v6, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v7, 0x0

    .line 63
    .local v7, "$i$f$getProtectionFlags":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v6

    .line 87
    .end local v6    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v7    # "$i$f$getProtectionFlags":I
    const/16 v7, 0x1000

    invoke-static {v6, v7}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    .line 673
    .end local p2    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local p5    # "$i$f$isInstant":I
    if-nez p2, :cond_2

    .line 674
    return p3

    .line 678
    .end local p6    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_2
    const/4 p2, 0x1

    return p2
.end method

.method private final isSystemUidPermissionGranted(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_0

    const-string/jumbo v0, "systemConfig"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 585
    .local v0, "uidPermissions":Landroid/util/ArraySet;
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 586
    return v3

    .line 589
    :cond_2
    sget-object v2, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 590
    .local v2, "fullerPermissionName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 591
    return v3

    .line 594
    :cond_3
    return v1
.end method

.method private final isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z
    .locals 1
    .param p1, "$this$isUidInstantApp"    # Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .param p2, "uid"    # I

    .line 2589
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final killUid(ILjava/lang/String;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2552
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 2553
    .local v0, "activityManager":Landroid/app/IActivityManager;
    if-eqz v0, :cond_0

    .line 2554
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2555
    .local v1, "appId":I
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .local v2, "userId":I
    const-class v3, Landroid/os/Binder;

    .line 2556
    nop

    .local v3, "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    const/4 v4, 0x0

    .line 23
    .local v4, "$i$f$withClearedCallingIdentity":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 24
    .local v5, "token$iv":J
    nop

    .line 25
    const/4 v7, 0x0

    .line 2557
    .local v7, "$i$a$-withClearedCallingIdentity-PermissionService$killUid$1":I
    nop

    .line 2558
    :try_start_0
    invoke-interface {v0, v1, v2, p2}, Landroid/app/IActivityManager;->killUidForPermissionChange(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 27
    .end local v7    # "$i$a$-withClearedCallingIdentity-PermissionService$killUid$1":I
    :catchall_0
    move-exception v7

    goto :goto_1

    .line 2559
    .restart local v7    # "$i$a$-withClearedCallingIdentity-PermissionService$killUid$1":I
    :catch_0
    move-exception v8

    .line 2562
    :goto_0
    nop

    .end local v7    # "$i$a$-withClearedCallingIdentity-PermissionService$killUid$1":I
    :try_start_1
    sget-object v7, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    nop

    .line 27
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    goto :goto_2

    .line 27
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2564
    .end local v1    # "appId":I
    .end local v2    # "userId":I
    .end local v3    # "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    .end local v4    # "$i$f$withClearedCallingIdentity":I
    .end local v5    # "token$iv":J
    :cond_0
    :goto_2
    return-void
.end method

.method private final setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionNames"    # Ljava/util/List;
    .param p3, "allowlistedFlags"    # I
    .param p4, "userId"    # I
    .param p5, "isAddingPermission"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZ)Z"
        }
    .end annotation

    .line 1860
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1863
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1864
    nop

    .line 1863
    const-string v3, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v2

    .line 1862
    :goto_1
    move v8, v0

    .line 1867
    .local v8, "isCallerPrivileged":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1869
    .local v9, "callingUid":I
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    move v6, p4

    invoke-direct {p0, v0, v9, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v4

    move-object v0, v4

    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v5, 0x0

    .line 1870
    .local v5, "$i$a$-use-PermissionService$setAllowlistedRestrictedPermissions$packageState$1":I
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/pkg/PackageState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$setAllowlistedRestrictedPermissions$packageState$1":I
    if-nez v10, :cond_3

    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v2

    .line 1869
    :cond_3
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1868
    nop

    .line 1872
    .local v10, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    move-object v2, v0

    .line 1875
    .local v2, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_5

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v3, v0

    :goto_2
    invoke-virtual {v3, v2, v9}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v0

    .line 1874
    nop

    .line 1877
    .local v0, "isCallerInstallerOnRecord":Z
    const/4 v3, 0x4

    invoke-static {p3, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1878
    if-nez v8, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    goto :goto_3

    .line 1879
    :cond_7
    new-instance v3, Ljava/lang/SecurityException;

    .line 1880
    nop

    .line 1879
    const-string v4, "Modifying upgrade allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1884
    :goto_3
    if-eqz p5, :cond_8

    if-eqz v8, :cond_9

    :cond_8
    goto :goto_4

    .line 1885
    :cond_9
    new-instance v3, Ljava/lang/SecurityException;

    .line 1886
    nop

    .line 1885
    const-string v4, "Adding to upgrade allowlist requiresandroid.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1892
    :cond_a
    :goto_4
    nop

    .line 1893
    nop

    .line 1894
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 1895
    nop

    .line 1896
    nop

    .line 1897
    nop

    .line 1892
    move-object v1, p0

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V

    .line 1900
    return v7

    .line 1869
    .end local v0    # "isCallerInstallerOnRecord":Z
    .end local v2    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v10    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v8    # "isCallerPrivileged":Z
    .end local v9    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionNames":Ljava/util/List;
    .end local p3    # "allowlistedFlags":I
    .end local p4    # "userId":I
    .end local p5    # "isAddingPermission":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v8    # "isCallerPrivileged":Z
    .restart local v9    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionNames":Ljava/util/List;
    .restart local p3    # "allowlistedFlags":I
    .restart local p4    # "userId":I
    .restart local p5    # "isAddingPermission":Z
    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final setAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;II)V
    .locals 29
    .param p1, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "appId"    # I
    .param p3, "permissionNames"    # Ljava/util/List;
    .param p4, "allowlistedFlags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1914
    move/from16 v1, p4

    const/4 v0, 0x0

    .line 1915
    .local v0, "exemptMask":I
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1916
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 1918
    :cond_0
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1919
    const/high16 v4, 0x20000

    or-int/2addr v0, v4

    .line 1921
    :cond_1
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1922
    const v4, 0x8000

    or-int/2addr v0, v4

    move v9, v0

    goto :goto_0

    .line 1921
    :cond_2
    move v9, v0

    .line 1925
    .end local v0    # "exemptMask":I
    .local v9, "exemptMask":I
    :goto_0
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v12, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v13, 0x0

    .line 293
    .local v13, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_1

    .line 293
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    move-object/from16 v2, p3

    goto/16 :goto_7

    .line 294
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_3
    :goto_1
    move-object v15, v4

    .line 295
    .local v15, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v15}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 296
    .local v4, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v15, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v5, "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v16, 0x0

    .line 1926
    .local v16, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1":I
    invoke-static {v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v6

    .local v6, "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v17, 0x0

    .line 1927
    .local v17, "$i$a$-with-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1":I
    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 1928
    .local v7, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v8

    move-object/from16 v18, v8

    .local v18, "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    const/16 v19, 0x0

    .line 3172
    .local v19, "$i$f$forEachIndexed":I
    const/4 v8, 0x0

    .line 3173
    .local v8, "index$iv":I
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v21, v10

    .local v21, "item$iv":Ljava/lang/Object;
    add-int/lit8 v22, v8, 0x1

    .end local v8    # "index$iv":I
    .local v22, "index$iv":I
    if-gez v8, :cond_4

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    move-object/from16 v8, v21

    check-cast v8, Ljava/lang/String;

    .local v8, "requestedPermission":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1929
    .local v23, "$i$a$-forEachIndexed-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1$1":I
    invoke-virtual {v7, v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 1930
    .local v10, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-eqz v10, :cond_9

    move-object/from16 v24, v10

    .local v24, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v25, 0x0

    .line 141
    .local v25, "$i$f$isHardOrSoftRestricted":I
    move-object/from16 v26, v24

    .local v26, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v27, 0x0

    .line 132
    .local v27, "$i$f$isHardRestricted":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {v2, v3}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    .line 141
    .end local v26    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v27    # "$i$f$isHardRestricted":I
    const/16 v26, 0x0

    if-nez v2, :cond_6

    move-object/from16 v2, v24

    .local v2, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v27, 0x0

    .line 138
    .local v27, "$i$f$isSoftRestricted":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    move/from16 v28, v0

    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v28, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    const/16 v0, 0x8

    invoke-static {v3, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v2    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v27    # "$i$f$isSoftRestricted":I
    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move/from16 v0, v26

    goto :goto_4

    .end local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_6
    move/from16 v28, v0

    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .restart local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :goto_3
    const/4 v0, 0x1

    .line 1930
    .end local v24    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v25    # "$i$f$isHardOrSoftRestricted":I
    :goto_4
    if-nez v0, :cond_7

    move-object/from16 v2, p3

    move-object v0, v4

    move-object v4, v6

    move-object v3, v7

    move-object/from16 v24, v8

    move-object v8, v10

    goto :goto_5

    .line 1934
    :cond_7
    move-object/from16 v2, p3

    :try_start_1
    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move/from16 v26, v9

    .line 1935
    .local v26, "exemptFlags":I
    :cond_8
    move-object v0, v4

    move-object v4, v6

    move-object v3, v7

    move-object/from16 v24, v8

    move-object v8, v10

    move/from16 v10, v26

    move/from16 v6, p2

    move/from16 v7, p5

    .end local v6    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v26    # "exemptFlags":I
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v3, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v4, "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .local v8, "permission":Lcom/android/server/permission/access/permission/Permission;
    .local v10, "exemptFlags":I
    .local v24, "requestedPermission":Ljava/lang/String;
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->updatePermissionExemptFlags(Lcom/android/server/permission/access/MutateStateScope;IILcom/android/server/permission/access/permission/Permission;II)V

    .line 1936
    goto :goto_6

    .line 293
    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v3    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v5    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116":Lcom/android/server/permission/access/MutateStateScope;
    .end local v8    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v10    # "exemptFlags":I
    .end local v15    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v16    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1":I
    .end local v17    # "$i$a$-with-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1":I
    .end local v18    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEachIndexed":I
    .end local v21    # "item$iv":Ljava/lang/Object;
    .end local v22    # "index$iv":I
    .end local v23    # "$i$a$-forEachIndexed-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1$1":I
    .end local v24    # "requestedPermission":Ljava/lang/String;
    .end local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 1930
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v4, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v5    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v6    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .restart local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v8, "requestedPermission":Ljava/lang/String;
    .local v10, "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v15    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v16    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1":I
    .restart local v17    # "$i$a$-with-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1":I
    .restart local v18    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$forEachIndexed":I
    .restart local v21    # "item$iv":Ljava/lang/Object;
    .restart local v22    # "index$iv":I
    .restart local v23    # "$i$a$-forEachIndexed-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1$1":I
    :cond_9
    move-object/from16 v2, p3

    move/from16 v28, v0

    move-object v0, v4

    move-object v4, v6

    move-object v3, v7

    move-object/from16 v24, v8

    move-object v8, v10

    .line 1931
    .end local v6    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v3    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v4, "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .local v8, "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v24    # "requestedPermission":Ljava/lang/String;
    .restart local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :goto_5
    nop

    .line 3173
    .end local v8    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v23    # "$i$a$-forEachIndexed-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1$1":I
    .end local v24    # "requestedPermission":Ljava/lang/String;
    :goto_6
    move-object v7, v3

    move-object v6, v4

    move/from16 v8, v22

    const/4 v2, 0x1

    const/4 v3, 0x4

    move-object v4, v0

    move/from16 v0, v28

    .end local v21    # "item$iv":Ljava/lang/Object;
    goto/16 :goto_2

    .line 3182
    .end local v3    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v22    # "index$iv":I
    .end local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v4, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v6    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .restart local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v8, "index$iv":I
    :cond_a
    move-object/from16 v2, p3

    move/from16 v28, v0

    move-object v0, v4

    move-object v4, v6

    move-object v3, v7

    .line 1937
    .end local v6    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v8    # "index$iv":I
    .end local v18    # "$this$forEachIndexed$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$forEachIndexed":I
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v3    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v4, "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .restart local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    nop

    .line 1926
    .end local v3    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116_u24lambda_u24115":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v17    # "$i$a$-with-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1$1":I
    nop

    .line 1938
    nop

    .line 296
    .end local v5    # "$this$setAllowlistedRestrictedPermissionsUnchecked_u24lambda_u24116":Lcom/android/server/permission/access/MutateStateScope;
    .end local v16    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setAllowlistedRestrictedPermissionsUnchecked$1":I
    nop

    .line 297
    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v12, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v3

    .line 3186
    .local v3, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v5, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v3    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v4    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v15    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v28    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 293
    monitor-exit v14

    .line 301
    nop

    .line 1939
    .end local v12    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v13    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v12    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v13    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_7
    monitor-exit v14

    throw v0
.end method

.method private final setAppOpPermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "$this$setAppOpPermissionGranted"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "isGranted"    # Z

    .line 1120
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    const-string/jumbo v1, "uid"

    const-string v2, "app-op"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/AccessCheckingService;->getSchemePolicy$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/permission/access/SchemePolicy;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.server.permission.access.appop.AppIdAppOpPolicy"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;

    .line 1119
    nop

    .line 1121
    .local v0, "appOpPolicy":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    invoke-static {p4}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v6, v1

    .line 1122
    .local v6, "appOpName":Ljava/lang/String;
    if-eqz p5, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v7, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 1123
    .local v7, "mode":I
    :goto_1
    move-object v2, v0

    .line 2940
    .local v2, "$this$setAppOpPermissionGranted_u24lambda_u2468":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    const/4 v1, 0x0

    .line 1123
    .local v1, "$i$a$-with-PermissionService$setAppOpPermissionGranted$1":I
    invoke-interface {p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    move-object v3, p1

    move v5, p3

    .end local p1    # "$this$setAppOpPermissionGranted":Lcom/android/server/permission/access/MutateStateScope;
    .end local p3    # "userId":I
    .local v3, "$this$setAppOpPermissionGranted":Lcom/android/server/permission/access/MutateStateScope;
    .local v5, "userId":I
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;->setAppOpMode(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    .line 1124
    .end local v1    # "$i$a$-with-PermissionService$setAppOpPermissionGranted$1":I
    .end local v2    # "$this$setAppOpPermissionGranted_u24lambda_u2468":Lcom/android/server/permission/access/appop/AppIdAppOpPolicy;
    return-void
.end method

.method private final setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7
    .param p1, "$this$setPermissionFlagsWithPolicy"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 1693
    nop

    .line 1694
    nop

    .line 1695
    const-string v0, "default:0"

    invoke-static {p5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1697
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v1, "$this$setPermissionFlagsWithPolicy_u24lambda_u24100":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v0, 0x0

    .line 1697
    .local v0, "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$1":I
    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    .end local p1    # "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .end local p6    # "flags":I
    .local v2, "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .local v3, "appId":I
    .local v4, "userId":I
    .local v5, "permissionName":Ljava/lang/String;
    .local v6, "flags":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p1

    move-object v1, v2

    move v2, v3

    move-object v3, p5

    .end local v0    # "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$1":I
    .end local v3    # "appId":I
    .local v1, "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .local v2, "appId":I
    goto :goto_0

    .line 1699
    .end local v1    # "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .end local v2    # "appId":I
    .end local v4    # "userId":I
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v6    # "flags":I
    .restart local p1    # "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .restart local p2    # "appId":I
    .restart local p3    # "userId":I
    .restart local p4    # "permissionName":Ljava/lang/String;
    .restart local p6    # "flags":I
    :cond_0
    move-object v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    .end local p1    # "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .end local p2    # "appId":I
    .end local p3    # "userId":I
    .end local p4    # "permissionName":Ljava/lang/String;
    .end local p6    # "flags":I
    .restart local v1    # "$this$setPermissionFlagsWithPolicy":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v2    # "appId":I
    .restart local v4    # "userId":I
    .restart local v5    # "permissionName":Ljava/lang/String;
    .restart local v6    # "flags":I
    sget-object p1, Landroid/permission/PermissionManager;->DEVICE_AWARE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1701
    sget-object p1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1702
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not device aware permission,  set the flags for default device."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1700
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1705
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v0, "$this$setPermissionFlagsWithPolicy_u24lambda_u24101":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 p1, 0x0

    .line 1705
    .local p1, "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$2":I
    move v3, v4

    move-object v4, v5

    move v5, v6

    .end local v6    # "flags":I
    .local v3, "userId":I
    .local v4, "permissionName":Ljava/lang/String;
    .local v5, "flags":I
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;I)Z

    move-result p1

    move-object v5, v4

    move v4, v3

    .end local v0    # "$this$setPermissionFlagsWithPolicy_u24lambda_u24101":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v3    # "userId":I
    .end local p1    # "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$2":I
    .local v4, "userId":I
    .local v5, "permissionName":Ljava/lang/String;
    .restart local v6    # "flags":I
    return p1

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .local v0, "$this$setPermissionFlagsWithPolicy_u24lambda_u24102":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 p1, 0x0

    .line 1709
    .local p1, "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$3":I
    move-object v3, p5

    .end local p5    # "deviceId":Ljava/lang/String;
    .local v3, "deviceId":Ljava/lang/String;
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->setPermissionFlags(Lcom/android/server/permission/access/MutateStateScope;ILjava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    .line 1708
    .end local v0    # "$this$setPermissionFlagsWithPolicy_u24lambda_u24102":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .end local p1    # "$i$a$-with-PermissionService$setPermissionFlagsWithPolicy$3":I
    nop

    .line 1693
    :goto_0
    return p1
.end method

.method private final setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V
    .locals 28
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "userId"    # I
    .param p3, "permissionStates"    # Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/pkg/PackageState;",
            "I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 902
    move-object/from16 v1, p0

    iget-object v14, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v14, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v15, 0x0

    .line 293
    .local v15, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    const/16 v17, 0x0

    .line 294
    .local v17, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "state"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    .line 293
    .end local v17    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 294
    .restart local v17    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_0
    :goto_0
    move-object v12, v2

    .line 295
    .local v12, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v12}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v2

    move-object v13, v2

    .line 296
    .local v13, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v2, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v2, v12, v13}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v2, "$this$setRequestedPermissionStates_u24lambda_u2465":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v18, 0x0

    .line 903
    .local v18, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setRequestedPermissionStates$1":I
    move-object/from16 v7, p3

    .local v7, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    const/16 v19, 0x0

    .line 40
    .local v19, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .local v3, "index$iv":I
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    move v9, v3

    .end local v3    # "index$iv":I
    .local v9, "index$iv":I
    :goto_1
    if-ge v9, v8, :cond_a

    .line 41
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast v3, Ljava/lang/String;

    move-object v5, v3

    .local v5, "permissionName":Ljava/lang/String;
    move v10, v4

    .local v10, "permissionState":I
    const/16 v20, 0x0

    .line 904
    .local v20, "$i$a$-forEachIndexed-PermissionService$setRequestedPermissionStates$1$1":I
    packed-switch v10, :pswitch_data_0

    .line 909
    invoke-static {}, Lcom/android/server/permission/access/permission/PermissionService;->access$getLOG_TAG$cp()Ljava/lang/String;

    move-result-object v3

    .line 911
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setRequestedPermissionStates: Unknown permission state "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 908
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_6

    .line 916
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 917
    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_6

    .line 920
    :cond_1
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v3

    .line 2940
    .local v3, "$this$setRequestedPermissionStates_u24lambda_u2465_u24lambda_u2464_u24lambda_u2463":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v4, 0x0

    .line 920
    .local v4, "$i$a$-with-PermissionService$setRequestedPermissionStates$1$1$permission$1":I
    invoke-virtual {v3, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .end local v3    # "$this$setRequestedPermissionStates_u24lambda_u2465_u24lambda_u2464_u24lambda_u2463":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v4    # "$i$a$-with-PermissionService$setRequestedPermissionStates$1$1$permission$1":I
    if-nez v6, :cond_2

    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_6

    .line 919
    :cond_2
    move-object/from16 v21, v6

    .line 921
    .local v21, "permission":Lcom/android/server/permission/access/permission/Permission;
    nop

    .line 922
    move-object/from16 v3, v21

    .local v3, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v4, 0x0

    .line 78
    .local v4, "$i$f$isDevelopment":I
    move-object v6, v3

    .local v6, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v11, 0x0

    .line 63
    .local v11, "$i$f$getProtectionFlags":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    .line 78
    .end local v6    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v11    # "$i$f$getProtectionFlags":I
    const/16 v6, 0x20

    invoke-static {v0, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 922
    .end local v3    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v4    # "$i$f$isDevelopment":I
    if-nez v0, :cond_4

    move-object/from16 v0, v21

    .local v0, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$f$isRuntime":I
    move-object v4, v0

    .local v4, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 48
    .local v6, "$i$f$getProtection":I
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v11

    .line 57
    .end local v4    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$getProtection":I
    const/4 v6, 0x1

    if-ne v11, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 922
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$f$isRuntime":I
    :goto_2
    if-eqz v0, :cond_5

    :cond_4
    goto :goto_4

    .line 954
    :cond_5
    move-object/from16 v0, v21

    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 66
    .local v3, "$i$f$isAppOp":I
    move-object v6, v0

    .local v6, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v11, 0x0

    .line 63
    .restart local v11    # "$i$f$getProtectionFlags":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    .line 66
    .end local v6    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v11    # "$i$f$getProtectionFlags":I
    const/16 v6, 0x40

    invoke-static {v4, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    .line 954
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$f$isAppOp":I
    if-eqz v4, :cond_8

    .line 956
    sget-object v0, Lcom/android/server/pm/PackageInstallerService;->INSTALLER_CHANGEABLE_APP_OP_PERMISSIONS:Ljava/util/Set;

    .line 955
    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 957
    nop

    .line 958
    nop

    .line 959
    nop

    .line 960
    nop

    .line 961
    nop

    .line 962
    nop

    .line 961
    const/4 v6, 0x1

    if-ne v10, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 957
    :goto_3
    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$setAppOpPermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Z)V

    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_5

    .line 955
    :cond_7
    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_5

    .line 954
    :cond_8
    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v12

    move-object v0, v13

    goto/16 :goto_5

    .line 923
    :goto_4
    nop

    .line 924
    nop

    .line 925
    nop

    .line 924
    const/4 v6, 0x1

    if-ne v10, v6, :cond_9

    .line 927
    nop

    .line 928
    nop

    .line 929
    nop

    .line 930
    nop

    .line 931
    const-string v6, "default:0"

    .line 932
    nop

    .line 933
    nop

    .line 934
    nop

    .line 935
    nop

    .line 936
    const-string/jumbo v11, "setRequestedPermissionStates"

    .line 927
    move-object v0, v7

    .end local v7    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .local v0, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    const/4 v7, 0x1

    move v1, v8

    const/4 v8, 0x0

    move v3, v9

    .end local v9    # "index$iv":I
    .local v3, "index$iv":I
    const/4 v9, 0x0

    move v4, v10

    .end local v10    # "permissionState":I
    .local v4, "permissionState":I
    const/4 v10, 0x0

    move/from16 v22, v1

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .end local v3    # "index$iv":I
    .end local v4    # "permissionState":I
    .local v24, "index$iv":I
    .local v25, "permissionState":I
    invoke-static/range {v1 .. v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 938
    nop

    .line 939
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 940
    nop

    .line 941
    nop

    .line 942
    const-string v6, "default:0"

    .line 943
    nop

    .line 945
    nop

    .line 946
    nop

    .line 947
    nop

    .line 948
    nop

    .line 949
    move-object v1, v12

    .end local v12    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v1, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    const-string/jumbo v12, "setRequestedPermissionStates"

    .line 950
    move-object v4, v13

    .end local v13    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v4, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 938
    const/16 v7, 0x48

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v27, v0

    move-object/from16 v26, v1

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v4, p2

    .end local v1    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v4    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v26, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v27, "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 924
    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v24    # "index$iv":I
    .end local v25    # "permissionState":I
    .end local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v27    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .restart local v7    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .restart local v9    # "index$iv":I
    .restart local v10    # "permissionState":I
    .restart local v12    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v13    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    :cond_9
    move-object/from16 v27, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move-object/from16 v26, v12

    move-object v0, v13

    .line 966
    .end local v7    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .end local v9    # "index$iv":I
    .end local v10    # "permissionState":I
    .end local v12    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v13    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v24    # "index$iv":I
    .restart local v25    # "permissionState":I
    .restart local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v27    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    :goto_5
    nop

    .line 41
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v20    # "$i$a$-forEachIndexed-PermissionService$setRequestedPermissionStates$1$1":I
    .end local v21    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v25    # "permissionState":I
    :goto_6
    nop

    .line 40
    const/16 v23, 0x1

    add-int/lit8 v9, v24, 0x1

    move-object/from16 v1, p0

    move-object v13, v0

    move/from16 v8, v22

    move-object/from16 v12, v26

    move-object/from16 v7, v27

    .end local v24    # "index$iv":I
    .restart local v9    # "index$iv":I
    goto/16 :goto_1

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v27    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .restart local v7    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .restart local v12    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v13    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    :cond_a
    move-object/from16 v27, v7

    move/from16 v24, v9

    move-object/from16 v26, v12

    move-object v0, v13

    .line 43
    .end local v7    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    .end local v9    # "index$iv":I
    .end local v12    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v13    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v27    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    nop

    .line 967
    .end local v19    # "$i$f$forEachIndexed":I
    .end local v27    # "$this$forEachIndexed$iv":Landroid/util/ArrayMap;
    nop

    .line 296
    .end local v2    # "$this$setRequestedPermissionStates_u24lambda_u2465":Lcom/android/server/permission/access/MutateStateScope;
    .end local v18    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setRequestedPermissionStates$1":I
    nop

    .line 297
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v14, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    .line 3081
    .local v1, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v1    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v2    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v17    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v16

    .line 301
    nop

    .line 968
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_7
    monitor-exit v16

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final setRuntimePermissionGranted(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V
    .locals 17
    .param p1, "$this$setRuntimePermissionGranted"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "isGranted"    # Z
    .param p7, "canManageRolePermission"    # Z
    .param p8, "overridePolicyFixed"    # Z
    .param p9, "reportError"    # Z
    .param p10, "methodName"    # Ljava/lang/String;

    .line 982
    move-object/from16 v0, p0

    move-object/from16 v4, p4

    move/from16 v7, p6

    move-object/from16 v8, p10

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v1, "$this$setRuntimePermissionGranted_u24lambda_u2466":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v2, 0x0

    .line 982
    .local v2, "$i$a$-with-PermissionService$setRuntimePermissionGranted$permission$1":I
    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .line 983
    .end local v1    # "$this$setRuntimePermissionGranted_u24lambda_u2466":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v2    # "$i$a$-with-PermissionService$setRuntimePermissionGranted$permission$1":I
    .local v9, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-nez v9, :cond_1

    .line 984
    if-nez p9, :cond_0

    .line 987
    return-void

    .line 985
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 990
    :cond_1
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v1

    .line 991
    .local v10, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 992
    .local v11, "packageName":Ljava/lang/String;
    nop

    .line 993
    move-object v1, v9

    .local v1, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 78
    .local v2, "$i$f$isDevelopment":I
    move-object v5, v1

    .local v5, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 63
    .local v6, "$i$f$getProtectionFlags":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    .line 78
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$getProtectionFlags":I
    const/16 v6, 0x20

    invoke-static {v5, v6}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    .line 993
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isDevelopment":I
    const/4 v12, 0x0

    const-string v6, " to package "

    const-string v13, "Permission "

    const/4 v14, 0x1

    if-nez v1, :cond_9

    .line 994
    move-object v1, v9

    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 114
    .local v2, "$i$f$isRole":I
    move-object v5, v1

    .restart local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 63
    .local v15, "$i$f$getProtectionFlags":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    .line 114
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getProtectionFlags":I
    const/high16 v15, 0x4000000

    invoke-static {v5, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    .line 994
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isRole":I
    if-eqz v1, :cond_3

    .line 995
    if-nez p7, :cond_9

    .line 996
    if-nez p9, :cond_2

    .line 999
    return-void

    .line 997
    :cond_2
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is managed by role"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1002
    :cond_3
    move-object v1, v9

    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 57
    .local v2, "$i$f$isRuntime":I
    move-object v5, v1

    .restart local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 48
    .local v15, "$i$f$getProtection":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    .line 57
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getProtection":I
    if-ne v5, v14, :cond_4

    move v1, v14

    goto :goto_0

    :cond_4
    move v1, v12

    .line 1002
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isRuntime":I
    :goto_0
    if-eqz v1, :cond_7

    .line 1003
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v1

    const/16 v2, 0x17

    if-ge v1, v2, :cond_5

    .line 1006
    return-void

    .line 1008
    :cond_5
    nop

    .line 1009
    if-eqz v7, :cond_9

    .line 1010
    invoke-interface/range {p2 .. p3}, Lcom/android/server/pm/pkg/PackageState;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1011
    move-object v1, v9

    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v2, 0x0

    .line 87
    .local v2, "$i$f$isInstant":I
    move-object v5, v1

    .restart local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v15, 0x0

    .line 63
    .local v15, "$i$f$getProtectionFlags":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v5

    .line 87
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "$i$f$getProtectionFlags":I
    const/16 v15, 0x1000

    invoke-static {v5, v15}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    .line 1011
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v2    # "$i$f$isInstant":I
    if-nez v1, :cond_9

    .line 1013
    if-nez p9, :cond_6

    .line 1019
    return-void

    .line 1014
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    .line 1015
    nop

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot grant non-instant permission "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_7
    if-nez p9, :cond_8

    .line 1029
    return-void

    .line 1024
    :cond_8
    new-instance v1, Ljava/lang/SecurityException;

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requested by package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not a changeable permission type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1033
    :cond_9
    invoke-interface/range {p2 .. p2}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    .line 1034
    .local v2, "appId":I
    move-object/from16 v5, p5

    move-object v1, v3

    move/from16 v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 1036
    .local v15, "oldFlags":I
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    if-nez v15, :cond_b

    .line 1037
    if-eqz p9, :cond_a

    .line 1039
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isn\'t requested by package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1038
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_a
    return-void

    .line 1046
    :cond_b
    const/16 v0, 0x100

    invoke-static {v15, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    const-string v1, " for package "

    if-eqz v0, :cond_d

    .line 1047
    if-eqz p9, :cond_c

    .line 1049
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1050
    nop

    .line 1051
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Cannot change system fixed permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1048
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_c
    return-void

    .line 1057
    :cond_d
    const/16 v0, 0x80

    invoke-static {v15, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_f

    if-nez p8, :cond_f

    .line 1058
    if-eqz p9, :cond_e

    .line 1060
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1061
    nop

    .line 1062
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Cannot change policy fixed permission "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1059
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_e
    return-void

    .line 1068
    :cond_f
    if-eqz v7, :cond_11

    const/high16 v0, 0x40000

    invoke-static {v15, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1069
    if-eqz p9, :cond_10

    .line 1071
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1072
    nop

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot grant hard-restricted non-exempt permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1070
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_10
    return-void

    .line 1079
    :cond_11
    if-eqz v7, :cond_13

    const/high16 v0, 0x80000

    invoke-static {v15, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1080
    if-eqz p9, :cond_12

    .line 1082
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1083
    nop

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot grant soft-restricted non-exempt permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1081
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_12
    return-void

    .line 1090
    :cond_13
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v0, v15, v7}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateRuntimePermissionGranted(IZ)I

    move-result v6

    .line 1091
    .local v6, "newFlags":I
    if-ne v15, v6, :cond_14

    .line 1092
    return-void

    .line 1095
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    .line 1097
    move-object v1, v9

    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$f$isRuntime":I
    move-object v5, v1

    .restart local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v13, 0x0

    .line 48
    .local v13, "$i$f$getProtection":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v5

    .line 57
    .end local v5    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v13    # "$i$f$getProtection":I
    if-ne v5, v14, :cond_15

    move v12, v14

    .line 1097
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$f$isRuntime":I
    :cond_15
    if-eqz v12, :cond_18

    .line 1099
    if-eqz v7, :cond_16

    .line 1100
    const/16 v1, 0x4db

    goto :goto_1

    .line 1102
    :cond_16
    const/16 v1, 0x4dd

    .line 1099
    :goto_1
    nop

    .line 1098
    nop

    .line 1105
    .local v1, "action":I
    new-instance v3, Landroid/metrics/LogMaker;

    invoke-direct {v3, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    move-object v5, v3

    .local v5, "$this$setRuntimePermissionGranted_u24lambda_u2467":Landroid/metrics/LogMaker;
    const/4 v12, 0x0

    .line 1106
    .local v12, "$i$a$-apply-PermissionService$setRuntimePermissionGranted$log$1":I
    invoke-virtual {v5, v11}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 1107
    const/16 v13, 0x4d9

    invoke-virtual {v5, v13, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1108
    nop

    .line 1105
    .end local v5    # "$this$setRuntimePermissionGranted_u24lambda_u2467":Landroid/metrics/LogMaker;
    .end local v12    # "$i$a$-apply-PermissionService$setRuntimePermissionGranted$log$1":I
    nop

    .line 1104
    nop

    .line 1109
    .local v3, "log":Landroid/metrics/LogMaker;
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    if-nez v5, :cond_17

    const-string/jumbo v5, "metricsLogger"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_17
    invoke-virtual {v5, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1111
    .end local v1    # "action":I
    .end local v3    # "log":Landroid/metrics/LogMaker;
    :cond_18
    return-void
.end method

.method private final setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 27
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "permissionName"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "isGranted"    # Z
    .param p6, "skipKillUid"    # Z
    .param p7, "revokeReason"    # Ljava/lang/String;

    .line 797
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v4, p2

    move-object/from16 v13, p7

    if-eqz p5, :cond_0

    const-string/jumbo v0, "grantRuntimePermission"

    :goto_0
    move-object v11, v0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "revokeRuntimePermission"

    goto :goto_0

    .line 798
    .local v11, "methodName":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 800
    .local v14, "callingUid":I
    if-eqz p5, :cond_1

    .line 801
    goto :goto_2

    .line 803
    :cond_1
    nop

    .line 800
    :goto_2
    nop

    .line 799
    const/4 v0, 0x0

    move v15, v0

    .line 805
    .local v15, "isDebugEnabled":Z
    nop

    .line 806
    nop

    .line 822
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v2, :cond_2

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 823
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 827
    :cond_3
    nop

    .line 828
    nop

    .line 829
    nop

    .line 830
    nop

    .line 831
    nop

    .line 827
    const/4 v2, 0x1

    invoke-direct {v1, v4, v2, v2, v11}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 834
    if-eqz p5, :cond_4

    .line 835
    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    goto :goto_3

    .line 837
    :cond_4
    const-string v5, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    .line 834
    :goto_3
    nop

    .line 833
    nop

    .line 839
    .local v5, "enforcedPermissionName":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v6, v5, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    new-instance v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 843
    .local v6, "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    iget-object v7, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v7, :cond_5

    const-string/jumbo v7, "packageManagerInternal"

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 845
    :cond_5
    nop

    .line 846
    nop

    .line 844
    const/4 v8, 0x7

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v7

    .line 848
    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 842
    nop

    .line 849
    .local v7, "permissionControllerPackageName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 850
    .local v8, "permissionControllerPackageState":Ljava/lang/Object;
    iget-object v9, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v9, :cond_6

    const-string/jumbo v9, "packageManagerLocal"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_6
    invoke-interface {v9}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v9

    move-object v10, v9

    .local v10, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/16 v16, 0x0

    .line 851
    .local v16, "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    nop

    .line 852
    :try_start_0
    invoke-direct {v1, v10, v14, v4}, Lcom/android/server/permission/access/permission/PermissionService;->filtered(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object/from16 v18, v2

    .line 2940
    .local v18, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/16 v19, 0x0

    .line 852
    .local v19, "$i$a$-use-PermissionService$setRuntimePermissionGranted$1$1":I
    move-object/from16 v0, v18

    .end local v18    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    :try_start_1
    invoke-interface {v0, v12}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v19    # "$i$a$-use-PermissionService$setRuntimePermissionGranted$1$1":I
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v2, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 851
    iput-object v3, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 853
    nop

    .line 854
    invoke-direct {v1, v10, v7}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 853
    move-object/from16 v19, v0

    .line 855
    .end local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .local v19, "permissionControllerPackageState":Ljava/lang/Object;
    nop

    .end local v10    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v16    # "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    :try_start_3
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 850
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 856
    iget-object v2, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/pkg/PackageState;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    goto :goto_4

    :cond_7
    move-object v2, v0

    :goto_4
    move-object/from16 v16, v2

    .line 860
    .local v16, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    if-nez v16, :cond_8

    .line 861
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 866
    :cond_8
    invoke-direct {v1, v14}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 867
    invoke-static {v14}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    if-ne v2, v3, :cond_9

    goto :goto_5

    :cond_9
    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    const/4 v8, 0x1

    .line 865
    :goto_6
    nop

    .line 869
    .local v8, "canManageRolePermission":Z
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 870
    const-string v3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 869
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v9, 0x1

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    .line 868
    :goto_7
    nop

    .line 873
    .local v9, "overridePolicyFixed":Z
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/16 v17, 0x0

    .line 293
    .local v17, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    const/16 v20, 0x0

    .line 294
    .local v20, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_4
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v3, :cond_c

    :try_start_5
    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v0

    goto :goto_8

    .line 293
    .end local v20    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    goto/16 :goto_b

    .line 294
    .restart local v20    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_c
    :goto_8
    nop

    .line 295
    .local v3, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v10

    .line 296
    .local v10, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v0, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v0, v3, v10}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v0, "$this$setRuntimePermissionGranted_u24lambda_u2462":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v22, 0x0

    .line 874
    .local v22, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setRuntimePermissionGranted$2":I
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getOnPermissionFlagsChangedListener$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    move-result-object v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v23, :cond_d

    :try_start_7
    const-string/jumbo v23, "onPermissionFlagsChangedListener"

    invoke-static/range {v23 .. v23}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/16 v21, 0x0

    goto :goto_9

    :cond_d
    move-object/from16 v21, v23

    :goto_9
    move-object/from16 v23, v21

    .local v23, "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    const/16 v21, 0x0

    .line 875
    .local v21, "$i$a$-with-PermissionService$setRuntimePermissionGranted$2$1":I
    if-eqz p6, :cond_e

    .line 876
    move-object/from16 v1, v23

    .end local v23    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .local v1, "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->skipKillRuntimePermissionRevokedUids(Lcom/android/server/permission/access/MutateStateScope;)V

    goto :goto_a

    .line 875
    .end local v1    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .restart local v23    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    :cond_e
    move-object/from16 v1, v23

    .line 878
    .end local v23    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .restart local v1    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    :goto_a
    if-eqz v13, :cond_f

    .line 879
    invoke-virtual {v1, v0, v13}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->addKillRuntimePermissionRevokedUidsReason(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 881
    :cond_f
    nop

    .line 874
    .end local v1    # "$this$setRuntimePermissionGranted_u24lambda_u2462_u24lambda_u2461":Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;
    .end local v21    # "$i$a$-with-PermissionService$setRuntimePermissionGranted$2$1":I
    nop

    .line 883
    nop

    .line 884
    :try_start_8
    iget-object v1, v6, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/pkg/PackageState;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 885
    nop

    .line 886
    nop

    .line 887
    nop

    .line 888
    nop

    .line 889
    nop

    .line 890
    nop

    .line 891
    nop

    .line 892
    nop

    .line 883
    move-object/from16 v21, v10

    .end local v10    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v21, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    const/4 v10, 0x1

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v2, v0

    move-object v3, v1

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v21, v5

    move-object/from16 v5, p3

    .end local v3    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v5    # "enforcedPermissionName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v2, "$this$setRuntimePermissionGranted_u24lambda_u2462":Lcom/android/server/permission/access/MutateStateScope;
    .local v21, "enforcedPermissionName":Ljava/lang/String;
    .local v23, "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .local v24, "permissionControllerPackageName":Ljava/lang/String;
    .local v25, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v26, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :try_start_9
    invoke-static/range {v1 .. v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$setRuntimePermissionGranted(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    .line 894
    nop

    .line 296
    .end local v2    # "$this$setRuntimePermissionGranted_u24lambda_u2462":Lcom/android/server/permission/access/MutateStateScope;
    .end local v22    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setRuntimePermissionGranted$2":I
    nop

    .line 297
    invoke-static/range {v25 .. v25}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 298
    move-object/from16 v1, v25

    .end local v25    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v1, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :try_start_a
    invoke-static {v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v2

    .line 3062
    .local v2, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v3, 0x0

    .line 299
    .local v3, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v4, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v2    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v3    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v20    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v26    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 293
    monitor-exit v18

    .line 301
    nop

    .line 895
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_1
    move-exception v0

    goto :goto_b

    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v25    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v25

    .end local v25    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    goto :goto_b

    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v5    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "permissionControllerPackageName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "enforcedPermissionName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    :goto_b
    monitor-exit v18

    throw v0

    .line 850
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "canManageRolePermission":Z
    .end local v9    # "overridePolicyFixed":Z
    .end local v16    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v5    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "permissionControllerPackageName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v0

    move-object/from16 v8, v19

    .end local v5    # "enforcedPermissionName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    goto :goto_c

    .end local v19    # "permissionControllerPackageState":Ljava/lang/Object;
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v5    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .local v8, "permissionControllerPackageState":Ljava/lang/Object;
    :catchall_5
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v0

    .end local v5    # "enforcedPermissionName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    goto :goto_c

    .line 852
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local v5    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .local v10, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .local v16, "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    :catchall_6
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object v1, v0

    .end local v5    # "enforcedPermissionName":Ljava/lang/String;
    .end local v6    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v7    # "permissionControllerPackageName":Ljava/lang/String;
    .end local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .end local v10    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .end local v15    # "isDebugEnabled":Z
    .end local v16    # "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "permissionName":Ljava/lang/String;
    .end local p4    # "deviceId":Ljava/lang/String;
    .end local p5    # "isGranted":Z
    .end local p6    # "skipKillUid":Z
    .end local p7    # "revokeReason":Ljava/lang/String;
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .restart local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .restart local v10    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v11    # "methodName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .restart local v15    # "isDebugEnabled":Z
    .restart local v16    # "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "permissionName":Ljava/lang/String;
    .restart local p4    # "deviceId":Ljava/lang/String;
    .restart local p5    # "isGranted":Z
    .restart local p6    # "skipKillUid":Z
    .restart local p7    # "revokeReason":Ljava/lang/String;
    :catchall_7
    move-exception v0

    :try_start_c
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .end local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .end local v15    # "isDebugEnabled":Z
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "permissionName":Ljava/lang/String;
    .end local p4    # "deviceId":Ljava/lang/String;
    .end local p5    # "isGranted":Z
    .end local p6    # "skipKillUid":Z
    .end local p7    # "revokeReason":Ljava/lang/String;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 850
    .end local v10    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v16    # "$i$a$-use-PermissionService$setRuntimePermissionGranted$1":I
    .restart local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .restart local v11    # "methodName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .restart local v15    # "isDebugEnabled":Z
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "permissionName":Ljava/lang/String;
    .restart local p4    # "deviceId":Ljava/lang/String;
    .restart local p5    # "isGranted":Z
    .restart local p6    # "skipKillUid":Z
    .restart local p7    # "revokeReason":Ljava/lang/String;
    :catchall_8
    move-exception v0

    move-object v1, v0

    :goto_c
    nop

    .end local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v14    # "callingUid":I
    .end local v15    # "isDebugEnabled":Z
    .end local v21    # "enforcedPermissionName":Ljava/lang/String;
    .end local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .end local p3    # "permissionName":Ljava/lang/String;
    .end local p4    # "deviceId":Ljava/lang/String;
    .end local p5    # "isGranted":Z
    .end local p6    # "skipKillUid":Z
    .end local p7    # "revokeReason":Ljava/lang/String;
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .restart local v8    # "permissionControllerPackageState":Ljava/lang/Object;
    .restart local v11    # "methodName":Ljava/lang/String;
    .restart local v14    # "callingUid":I
    .restart local v15    # "isDebugEnabled":Z
    .restart local v21    # "enforcedPermissionName":Ljava/lang/String;
    .restart local v23    # "packageState":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v24    # "permissionControllerPackageName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    .restart local p3    # "permissionName":Ljava/lang/String;
    .restart local p4    # "deviceId":Ljava/lang/String;
    .restart local p5    # "isGranted":Z
    .restart local p6    # "skipKillUid":Z
    .restart local p7    # "revokeReason":Ljava/lang/String;
    :catchall_9
    move-exception v0

    invoke-static {v9, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V
    .locals 8

    .line 788
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_0

    .line 794
    const/4 p6, 0x0

    move v6, p6

    goto :goto_0

    .line 788
    :cond_0
    move v6, p6

    :goto_0
    and-int/lit8 p6, p8, 0x40

    if-eqz p6, :cond_1

    .line 795
    const/4 p6, 0x0

    move-object v7, p6

    goto :goto_1

    .line 788
    :cond_1
    move-object v7, p7

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method private final toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;
    .locals 18
    .param p1, "permissions"    # Lcom/android/server/permission/access/immutable/IndexedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/permission/access/immutable/IndexedMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/permission/access/permission/Permission;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 2331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "destination$iv":Ljava/util/Collection;
    move-object/from16 v1, p1

    .local v1, "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$mapIndexedTo":I
    move-object v3, v1

    .local v3, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    .line 48
    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    .local v7, "key$iv":Ljava/lang/Object;
    invoke-virtual {v3, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "value$iv":Ljava/lang/Object;
    move v9, v5

    .local v9, "index$iv":I
    const/4 v10, 0x0

    .line 80
    .local v10, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapIndexedTo$1$iv":I
    move-object v11, v8

    check-cast v11, Lcom/android/server/permission/access/permission/Permission;

    .local v11, "permission":Lcom/android/server/permission/access/permission/Permission;
    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    const/4 v12, 0x0

    .line 2333
    .local v12, "$i$a$-mapIndexedTo-PermissionService$toLegacyPermissions$1":I
    new-instance v13, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v14

    invoke-virtual {v11}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v15

    move-object/from16 v16, v1

    .end local v1    # "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v16, "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v1, 0x0

    move/from16 v17, v2

    .end local v2    # "$i$f$mapIndexedTo":I
    .local v17, "$i$f$mapIndexedTo":I
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    invoke-direct {v13, v14, v15, v1, v2}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 80
    .end local v11    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v12    # "$i$a$-mapIndexedTo-PermissionService$toLegacyPermissions$1":I
    nop

    .line 3375
    .local v13, "it$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 80
    .local v1, "$i$a$-let-IndexedMapExtensionsKt$mapIndexedTo$1$1$iv":I
    invoke-interface {v0, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "$i$a$-let-IndexedMapExtensionsKt$mapIndexedTo$1$1$iv":I
    .end local v7    # "key$iv":Ljava/lang/Object;
    .end local v8    # "value$iv":Ljava/lang/Object;
    .end local v9    # "index$iv":I
    .end local v10    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapIndexedTo$1$iv":I
    .end local v13    # "it$iv":Ljava/lang/Object;
    nop

    .line 47
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0

    .end local v16    # "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v17    # "$i$f$mapIndexedTo":I
    .local v1, "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v2    # "$i$f$mapIndexedTo":I
    :cond_0
    nop

    .line 50
    .end local v5    # "index$iv$iv":I
    nop

    .line 81
    .end local v3    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$i$f$forEachIndexed":I
    nop

    .line 2334
    .end local v0    # "destination$iv":Ljava/util/Collection;
    .end local v1    # "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v2    # "$i$f$mapIndexedTo":I
    return-object v0
.end method

.method private final updatePermissionFlags(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "$this$updatePermissionFlags"    # Lcom/android/server/permission/access/MutateStateScope;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "permissionName"    # Ljava/lang/String;
    .param p5, "deviceId"    # Ljava/lang/String;
    .param p6, "flagMask"    # I
    .param p7, "flagValues"    # I
    .param p8, "canUpdateSystemFlags"    # Z
    .param p9, "reportErrorForUnknownPermission"    # Z
    .param p10, "isPermissionRequested"    # Z
    .param p11, "methodName"    # Ljava/lang/String;
    .param p12, "packageName"    # Ljava/lang/String;

    .line 1556
    move-object/from16 v4, p4

    move/from16 v0, p6

    .line 1557
    .local v0, "flagMask":I
    move/from16 v1, p7

    .line 1559
    .local v1, "flagValues":I
    if-nez p8, :cond_0

    .line 1563
    nop

    .line 1562
    const/16 v2, 0x7830

    .line 1569
    .local v2, "ignoredMask":I
    invoke-static {v0, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v0

    .line 1570
    invoke-static {v1, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result v1

    move v7, v0

    move v8, v1

    goto :goto_0

    .line 1559
    .end local v2    # "ignoredMask":I
    :cond_0
    move v7, v0

    move v8, v1

    .line 1573
    .end local v0    # "flagMask":I
    .end local v1    # "flagValues":I
    .local v7, "flagMask":I
    .local v8, "flagValues":I
    :goto_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v0, "$this$updatePermissionFlags_u24lambda_u2494":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v1, 0x0

    .line 1573
    .local v1, "$i$a$-with-PermissionService$updatePermissionFlags$permission$1":I
    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .line 1574
    .end local v0    # "$this$updatePermissionFlags_u24lambda_u2494":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v1    # "$i$a$-with-PermissionService$updatePermissionFlags$permission$1":I
    .local v9, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-nez v9, :cond_2

    .line 1575
    if-nez p9, :cond_1

    .line 1578
    return-void

    .line 1576
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1581
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1582
    .local v10, "oldFlags":I
    if-nez p10, :cond_3

    if-nez v10, :cond_3

    .line 1584
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1585
    nop

    .line 1586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, p11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isn\'t requested by package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1583
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    return-void

    .line 1582
    :cond_3
    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 1591
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v0, v9, v10, v7, v8}, Lcom/android/server/permission/access/permission/PermissionFlags;->updateFlags(Lcom/android/server/permission/access/permission/Permission;III)I

    move-result v6

    .line 1592
    .local v6, "newFlags":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->setPermissionFlagsWithPolicy(Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;I)Z

    .line 1593
    return-void
.end method

.method private final withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .locals 1
    .param p1, "$this$withFilteredSnapshot"    # Lcom/android/server/pm/PackageManagerLocal;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 2571
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot(ILandroid/os/UserHandle;)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistedFlags"    # I
    .param p4, "userId"    # I

    .line 1749
    if-eqz p2, :cond_3

    .line 1750
    invoke-direct {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1751
    return v1

    .line 1755
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1756
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1755
    :cond_1
    nop

    .line 1754
    move-object v4, v0

    .line 1758
    .local v4, "permissionNames":Ljava/util/ArrayList;
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1759
    invoke-interface {v4, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1760
    nop

    .line 1761
    nop

    .line 1762
    nop

    .line 1763
    nop

    .line 1764
    nop

    .line 1765
    nop

    .line 1760
    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p3    # "allowlistedFlags":I
    .end local p4    # "userId":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "allowlistedFlags":I
    .local v6, "userId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p1

    return p1

    .line 1768
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "allowlistedFlags":I
    .end local v6    # "userId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p3    # "allowlistedFlags":I
    .restart local p4    # "userId":I
    :cond_2
    return v1

    .line 2940
    .end local v4    # "permissionNames":Ljava/util/ArrayList;
    :cond_3
    move-object v3, p1

    move v5, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p3    # "allowlistedFlags":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "allowlistedFlags":I
    const/4 p1, 0x0

    .line 1749
    .local p1, "$i$a$-requireNotNull-PermissionService$addAllowlistedRestrictedPermission$1":I
    nop

    .end local p1    # "$i$a$-requireNotNull-PermissionService$addAllowlistedRestrictedPermission$1":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "permissionName cannot be null"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1969
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1970
    nop

    .line 1971
    nop

    .line 1969
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string v2, "addOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez v0, :cond_0

    const-string/jumbo v0, "onPermissionsChangeListeners"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->addListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1975
    return-void
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;Z)Z
    .locals 24
    .param p1, "permissionInfo"    # Landroid/content/pm/PermissionInfo;
    .param p2, "async"    # Z

    .line 370
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v11, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 371
    .local v11, "permissionName":Ljava/lang/String;
    if-eqz v11, :cond_a

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 373
    .local v12, "callingUid":I
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v4

    move-object v0, v4

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v5, 0x0

    .line 373
    .local v5, "$i$a$-use-PermissionService$addPermission$2":I
    :try_start_0
    invoke-direct {v1, v0, v12}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$addPermission$2":I
    invoke-static {v4, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_9

    .line 376
    iget v0, v3, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_1

    iget-object v0, v3, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    .line 377
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Label must be specified in permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 379
    :goto_0
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v13, v0

    .line 381
    .local v13, "oldPermission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    iget-object v14, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v14, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v15, 0x0

    .line 293
    .local v15, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_1
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    .line 293
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    goto/16 :goto_5

    .line 294
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_3
    move-object v2, v4

    .line 295
    .local v2, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :goto_1
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v4

    .line 296
    .local v4, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v5, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v5, v2, v4}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v5, "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v17, 0x0

    .line 382
    .local v17, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$addPermission$3":I
    invoke-static {v1, v5, v11}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    move-result-object v6

    .line 383
    .local v6, "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    invoke-static {v1, v5, v3, v6}, Lcom/android/server/permission/access/permission/PermissionService;->access$enforcePermissionTreeSize(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Landroid/content/pm/PermissionInfo;Lcom/android/server/permission/access/permission/Permission;)V

    .line 385
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v7

    .line 2940
    nop

    .local v7, "$this$addPermission_u24lambda_u2433_u24lambda_u2431":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 385
    .local v8, "$i$a$-with-PermissionService$addPermission$3$1":I
    invoke-virtual {v7, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/permission/access/permission/Permission;

    .end local v7    # "$this$addPermission_u24lambda_u2433_u24lambda_u2431":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$addPermission$3$1":I
    iput-object v9, v13, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 386
    iget-object v7, v13, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eqz v7, :cond_5

    iget-object v7, v13, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .local v7, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v8, 0x0

    .line 42
    .local v8, "$i$f$isDynamic":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    move/from16 v7, v19

    goto :goto_2

    :cond_4
    move/from16 v7, v18

    .line 386
    .end local v7    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v8    # "$i$f$isDynamic":I
    :goto_2
    if-eqz v7, :cond_6

    :cond_5
    goto :goto_3

    .line 387
    :cond_6
    new-instance v7, Ljava/lang/SecurityException;

    .line 388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 387
    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11    # "permissionName":Ljava/lang/String;
    .end local v12    # "callingUid":I
    .end local v13    # "oldPermission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    throw v7

    .line 392
    .restart local v11    # "permissionName":Ljava/lang/String;
    .restart local v12    # "callingUid":I
    .restart local v13    # "oldPermission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :goto_3
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    iput-object v7, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 394
    nop

    .line 395
    iget v7, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v7}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v7

    .line 394
    iput v7, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 398
    move-object v7, v2

    .end local v2    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v7, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    new-instance v2, Lcom/android/server/permission/access/permission/Permission;

    move-object v8, v6

    .end local v6    # "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    .local v8, "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v6

    const/16 v9, 0x30

    const/4 v10, 0x0

    move-object/from16 v20, v4

    .end local v4    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v20, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    const/4 v4, 0x1

    move-object/from16 v21, v5

    .end local v5    # "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    .local v21, "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v5, 0x2

    move-object/from16 v22, v7

    .end local v7    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v22, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    const/4 v7, 0x0

    move-object/from16 v23, v8

    .end local v8    # "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    .local v23, "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    const/4 v8, 0x0

    move-object/from16 v1, v20

    move/from16 v20, v0

    move-object v0, v1

    move-object/from16 v1, v21

    .end local v21    # "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v1, "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    .local v20, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    invoke-direct/range {v2 .. v10}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 397
    nop

    .line 400
    .local v2, "newPermission":Lcom/android/server/permission/access/permission/Permission;
    invoke-static/range {p0 .. p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v3

    .line 2940
    .local v3, "$this$addPermission_u24lambda_u2433_u24lambda_u2432":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v4, 0x0

    .line 400
    .local v4, "$i$a$-with-PermissionService$addPermission$3$2":I
    if-nez p2, :cond_7

    move/from16 v5, v19

    goto :goto_4

    :cond_7
    move/from16 v5, v18

    :goto_4
    invoke-virtual {v3, v1, v2, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addPermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;Z)V

    .line 401
    .end local v3    # "$this$addPermission_u24lambda_u2433_u24lambda_u2432":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v4    # "$i$a$-with-PermissionService$addPermission$3$2":I
    nop

    .line 296
    .end local v1    # "$this$addPermission_u24lambda_u2433":Lcom/android/server/permission/access/MutateStateScope;
    .end local v2    # "newPermission":Lcom/android/server/permission/access/permission/Permission;
    .end local v17    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$addPermission$3":I
    .end local v23    # "permissionTree":Lcom/android/server/permission/access/permission/Permission;
    nop

    .line 297
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v14, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v14}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    .line 3015
    .local v1, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v1    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v2    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v20    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v22    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit v16

    .line 301
    nop

    .line 403
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    iget-object v0, v13, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-nez v0, :cond_8

    move/from16 v18, v19

    :cond_8
    return v18

    .line 293
    .restart local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_5
    monitor-exit v16

    throw v0

    .line 374
    .end local v13    # "oldPermission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v14    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v15    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps cannot add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :catchall_1
    move-exception v0

    move-object v1, v0

    .end local v11    # "permissionName":Ljava/lang/String;
    .end local v12    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .end local p2    # "async":Z
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .restart local v11    # "permissionName":Ljava/lang/String;
    .restart local v12    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    .restart local p2    # "async":Z
    :catchall_2
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 2940
    .end local v12    # "callingUid":I
    :cond_a
    const/4 v0, 0x0

    .line 371
    .local v0, "$i$a$-requireNotNull-PermissionService$addPermission$1":I
    const-string/jumbo v0, "permissionName cannot be null"

    .end local v0    # "$i$a$-requireNotNull-PermissionService$addPermission$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public backupRuntimePermissions(I)[B
    .locals 6
    .param p1, "userId"    # I

    .line 2039
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2040
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2041
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "permissionControllerManager"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    .line 2042
    :cond_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 2043
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    .line 2044
    new-instance v5, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;

    invoke-direct {v5, v0}, Lcom/android/server/permission/access/permission/PermissionService$backupRuntimePermissions$1;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 2041
    invoke-virtual {v1, v3, v4, v5}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2047
    nop

    .line 2048
    :try_start_0
    sget-wide v3, Lcom/android/server/permission/access/permission/PermissionService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    goto :goto_1

    .line 2049
    :catch_0
    move-exception v1

    .line 2050
    .local v1, "e":Ljava/lang/Exception;
    nop

    .line 2051
    instance-of v3, v1, Ljava/util/concurrent/TimeoutException;

    if-nez v3, :cond_2

    .line 2052
    instance-of v3, v1, Ljava/lang/InterruptedException;

    if-nez v3, :cond_2

    .line 2053
    instance-of v3, v1, Ljava/util/concurrent/ExecutionException;

    if-eqz v3, :cond_1

    goto :goto_0

    .line 2057
    :cond_1
    throw v1

    .line 2054
    :cond_2
    :goto_0
    sget-object v3, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot create permission backup for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    nop

    .line 2057
    nop

    .line 2047
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v2
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 603
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v7, -0x1

    if-nez v0, :cond_1

    .line 604
    return v7

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v0, v3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v5, 0x0

    .line 609
    .local v5, "$i$a$-use-PermissionService$checkPermission$packageState$1":I
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$checkPermission$packageState$1":I
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_3

    .line 610
    return v7

    .line 608
    :cond_3
    nop

    .line 607
    move-object v3, v6

    .line 613
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v8, 0x0

    .line 287
    .local v8, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-nez v6, :cond_4

    const-string/jumbo v6, "state"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v6

    :goto_0
    invoke-direct {v5, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v2, v5

    .local v2, "$this$checkPermission_u24lambda_u2448":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 613
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$checkPermission$isPermissionGranted$1":I
    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 287
    .end local v2    # "$this$checkPermission_u24lambda_u2448":Lcom/android/server/permission/access/GetStateScope;
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$checkPermission$isPermissionGranted$1":I
    nop

    .line 613
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 612
    nop

    .line 614
    .local v2, "isPermissionGranted":Z
    if-eqz v2, :cond_5

    .line 615
    const/4 v7, 0x0

    goto :goto_1

    .line 617
    :cond_5
    nop

    .line 614
    :goto_1
    return v7

    .line 608
    .end local v2    # "isPermissionGranted":Z
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "uid"    # I
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .line 542
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 543
    .local v3, "userId":I
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v6, -0x1

    if-nez v0, :cond_1

    .line 544
    return v6

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-string/jumbo v2, "packageManagerInternal"

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    .line 551
    .local v7, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    const/4 v8, 0x0

    if-eqz v7, :cond_7

    .line 554
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-interface {v7}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    .line 553
    nop

    .line 555
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_4

    .line 557
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUidPermission: PackageState not found for AndroidPackage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v6

    .line 565
    :cond_4
    iget-object v9, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v9, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v10, 0x0

    .line 287
    .local v10, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v9}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v4

    :goto_0
    invoke-direct {v0, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v1, v0

    .local v1, "$this$checkUidPermission_u24lambda_u2446":Lcom/android/server/permission/access/GetStateScope;
    const/4 v11, 0x0

    .line 566
    .local v11, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$checkUidPermission$isPermissionGranted$1":I
    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .local v4, "permissionName":Ljava/lang/String;
    .local v5, "deviceId":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    .line 287
    .end local v1    # "$this$checkUidPermission_u24lambda_u2446":Lcom/android/server/permission/access/GetStateScope;
    .end local v11    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$checkUidPermission$isPermissionGranted$1":I
    nop

    .line 565
    .end local v9    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v10    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 564
    nop

    .line 568
    .local p2, "isPermissionGranted":Z
    if-eqz p2, :cond_6

    .line 569
    move v6, v8

    goto :goto_1

    .line 571
    :cond_6
    nop

    .line 568
    :goto_1
    return v6

    .line 575
    .end local v2    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v4    # "permissionName":Ljava/lang/String;
    .end local v5    # "deviceId":Ljava/lang/String;
    .local p2, "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":Ljava/lang/String;
    :cond_7
    move-object v4, p2

    move-object v5, p3

    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .restart local v4    # "permissionName":Ljava/lang/String;
    .restart local v5    # "deviceId":Ljava/lang/String;
    invoke-direct {p0, p1, v4}, Lcom/android/server/permission/access/permission/PermissionService;->isSystemUidPermissionGranted(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 576
    move v6, v8

    goto :goto_2

    .line 578
    :cond_8
    nop

    .line 575
    :goto_2
    return v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2099
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    sget-object v4, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2100
    return-void

    .line 2103
    :cond_0
    new-instance v3, Landroid/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v1, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2105
    .local v3, "writer":Landroid/util/IndentingPrintWriter;
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    array-length v6, v2

    if-nez v6, :cond_1

    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    if-eqz v6, :cond_3

    :cond_2
    goto :goto_1

    :cond_3
    move v6, v4

    goto :goto_2

    :goto_1
    move v6, v5

    :goto_2
    const/4 v7, 0x0

    const-string/jumbo v8, "state"

    if-nez v6, :cond_4

    aget-object v6, v2, v4

    const-string v9, "-a"

    invoke-static {v6, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    goto/16 :goto_7

    .line 2114
    :cond_5
    aget-object v6, v2, v4

    const-string v9, "--app-id"

    invoke-static {v6, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v9, "."

    const/4 v10, 0x2

    if-eqz v6, :cond_8

    array-length v6, v2

    if-ne v6, v10, :cond_8

    .line 2115
    aget-object v4, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2116
    .local v4, "appId":I
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v5, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v10, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v11

    if-nez v11, :cond_6

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v7, v11

    :goto_3
    invoke-direct {v10, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v10, "$this$dump_u24lambda_u24142":Lcom/android/server/permission/access/GetStateScope;
    const/4 v7, 0x0

    .line 2117
    .local v7, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$2":I
    invoke-virtual {v10}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v8

    .line 2118
    .local v8, "appIdPackageNames":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2119
    invoke-virtual {v10}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/immutable/IndexedSet;

    invoke-direct {v0, v3, v4, v9, v11}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    goto :goto_4

    .line 2121
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown app ID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2123
    :goto_4
    nop

    .line 287
    .end local v7    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$2":I
    .end local v8    # "appIdPackageNames":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "$this$dump_u24lambda_u24142":Lcom/android/server/permission/access/GetStateScope;
    nop

    .end local v4    # "appId":I
    .end local v5    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v6    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    goto/16 :goto_a

    .line 2124
    :cond_8
    aget-object v4, v2, v4

    const-string v6, "--package"

    invoke-static {v4, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    array-length v4, v2

    if-ne v4, v10, :cond_b

    .line 2125
    aget-object v4, v2, v5

    .line 2126
    .local v4, "packageName":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .restart local v5    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v6, 0x0

    .line 287
    .restart local v6    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v10, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v11

    if-nez v11, :cond_9

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v7, v11

    :goto_5
    invoke-direct {v10, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v10, "$this$dump_u24lambda_u24143":Lcom/android/server/permission/access/GetStateScope;
    const/4 v7, 0x0

    .line 2127
    .local v7, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$3":I
    invoke-virtual {v10}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageState;

    .line 2128
    .local v8, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-eqz v8, :cond_a

    .line 2129
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v9

    invoke-virtual {v10}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v11

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/permission/access/immutable/IndexedSetExtensionsKt;->indexedSetOf([Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/IndexedSet;

    move-result-object v12

    invoke-direct {v0, v3, v9, v11, v12}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    goto :goto_6

    .line 2131
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    :goto_6
    nop

    .line 287
    .end local v7    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$3":I
    .end local v8    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v10    # "$this$dump_u24lambda_u24143":Lcom/android/server/permission/access/GetStateScope;
    nop

    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v6    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    goto :goto_a

    .line 2135
    :cond_b
    nop

    .line 2136
    nop

    .line 2135
    const-string v4, "Usage: dumpsys permissionmgr [--app-id <APP_ID>] [--package <PACKAGE_NAME>]"

    invoke-virtual {v3, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 2106
    :goto_7
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v4, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v5, 0x0

    .line 287
    .local v5, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v6, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    if-nez v9, :cond_c

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_c
    move-object v7, v9

    :goto_8
    invoke-direct {v6, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v6, "$this$dump_u24lambda_u24141":Lcom/android/server/permission/access/GetStateScope;
    const/4 v7, 0x0

    .line 2107
    .local v7, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$1":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    invoke-direct {v0, v3, v8}, Lcom/android/server/permission/access/permission/PermissionService;->dumpSystemState(Landroid/util/IndentingPrintWriter;Lcom/android/server/permission/access/AccessState;)V

    .line 2108
    invoke-virtual {v6}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/server/permission/access/permission/PermissionService;->getAllAppIdPackageNames(Lcom/android/server/permission/access/AccessState;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v8

    .local v8, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v9, 0x0

    .line 47
    .local v9, "$i$f$forEachIndexed":I
    const/4 v10, 0x0

    .local v10, "index$iv":I
    invoke-virtual {v8}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v11

    :goto_9
    if-ge v10, v11, :cond_e

    .line 48
    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/permission/access/immutable/MutableIndexedSet;

    .local v13, "packageNames":Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    .local v12, "appId":I
    const/4 v14, 0x0

    .line 2109
    .local v14, "$i$a$-forEachIndexed-PermissionService$dump$1$1":I
    const/4 v15, -0x1

    if-eq v12, v15, :cond_d

    .line 2110
    invoke-virtual {v6}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v15

    invoke-direct {v0, v3, v12, v15, v13}, Lcom/android/server/permission/access/permission/PermissionService;->dumpAppIdState(Landroid/util/IndentingPrintWriter;ILcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/immutable/IndexedSet;)V

    .line 2112
    :cond_d
    nop

    .line 48
    .end local v12    # "appId":I
    .end local v13    # "packageNames":Lcom/android/server/permission/access/immutable/MutableIndexedSet;
    .end local v14    # "$i$a$-forEachIndexed-PermissionService$dump$1$1":I
    nop

    .line 47
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    nop

    .line 50
    .end local v10    # "index$iv":I
    nop

    .line 2113
    .end local v8    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v9    # "$i$f$forEachIndexed":I
    nop

    .line 287
    .end local v6    # "$this$dump_u24lambda_u24141":Lcom/android/server/permission/access/GetStateScope;
    .end local v7    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$dump$1":I
    nop

    .line 2139
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_a
    return-void
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2017
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v0

    .line 2018
    .local v2, "appOpPermissionPackageNames":Landroid/util/ArrayMap;
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_0
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v4, "$this$getAllAppOpPermissionPackages_u24lambda_u24131":Lcom/android/server/permission/access/GetStateScope;
    const/4 v5, 0x0

    .line 2018
    .local v5, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllAppOpPermissionPackages$permissions$1":I
    iget-object v7, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v7, "$this$getAllAppOpPermissionPackages_u24lambda_u24131_u24lambda_u24130":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 2018
    .local v8, "$i$a$-with-PermissionService$getAllAppOpPermissionPackages$permissions$1$1":I
    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 287
    .end local v4    # "$this$getAllAppOpPermissionPackages_u24lambda_u24131":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllAppOpPermissionPackages$permissions$1":I
    .end local v7    # "$this$getAllAppOpPermissionPackages_u24lambda_u24131_u24lambda_u24130":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$getAllAppOpPermissionPackages$permissions$1$1":I
    nop

    .line 2018
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 2019
    .local v7, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_1

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v4, 0x0

    .line 2020
    .local v4, "$i$a$-use-PermissionService$getAllAppOpPermissionPackages$1":I
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v5

    .local v5, "$this$forEach$iv":Ljava/util/Map;
    const/4 v8, 0x0

    .line 3227
    .local v8, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .local v10, "element$iv":Ljava/util/Map$Entry;
    const/4 v11, 0x0

    .line 2020
    .local v11, "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/PackageState;

    .line 2021
    .local v12, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2022
    move-object/from16 v25, v0

    goto/16 :goto_5

    .line 2024
    :cond_2
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v13

    if-nez v13, :cond_3

    move-object/from16 v25, v0

    goto/16 :goto_5

    .line 2025
    .local v13, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_3
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v14

    .local v14, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 3228
    .local v15, "$i$f$forEach":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .local v17, "element$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    check-cast v18, Ljava/lang/String;

    move-object/from16 v19, v18

    .local v19, "permissionName":Ljava/lang/String;
    const/16 v18, 0x0

    .line 2026
    .local v18, "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1$1":I
    move-object/from16 v6, v19

    .end local v19    # "permissionName":Ljava/lang/String;
    .local v6, "permissionName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/permission/access/permission/Permission;

    if-nez v19, :cond_4

    move-object/from16 v25, v0

    goto :goto_4

    .line 2027
    .local v19, "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_4
    move-object/from16 v20, v19

    .local v20, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v21, 0x0

    .line 66
    .local v21, "$i$f$isAppOp":I
    move-object/from16 v22, v20

    .local v22, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v23, 0x0

    .line 63
    .local v23, "$i$f$getProtectionFlags":I
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v24

    move-object/from16 v25, v0

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .local v25, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    invoke-virtual/range {v24 .. v24}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    .line 66
    .end local v22    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v23    # "$i$f$getProtectionFlags":I
    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 2027
    .end local v20    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v21    # "$i$f$isAppOp":I
    if-eqz v0, :cond_6

    .line 2029
    move-object v0, v2

    .local v0, "$this$getOrPut$iv":Landroid/util/ArrayMap;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$f$getOrPut":I
    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_5

    .local v20, "it$iv":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 53
    .local v21, "$i$a$-let-ArrayMapExtensionsKt$getOrPut$1$iv":I
    goto :goto_2

    .line 55
    .end local v20    # "it$iv":Ljava/lang/Object;
    .end local v21    # "$i$a$-let-ArrayMapExtensionsKt$getOrPut$1$iv":I
    :cond_5
    const/16 v20, 0x0

    .line 2029
    .local v20, "$i$a$-getOrPut-PermissionService$getAllAppOpPermissionPackages$1$1$1$packageNames$1":I
    new-instance v21, Landroid/util/ArraySet;

    invoke-direct/range {v21 .. v21}, Landroid/util/ArraySet;-><init>()V

    .line 55
    .end local v20    # "$i$a$-getOrPut-PermissionService$getAllAppOpPermissionPackages$1$1$1$packageNames$1":I
    move-object/from16 v20, v21

    .line 3235
    .local v20, "it$iv":Ljava/lang/Object;
    const/16 v22, 0x0

    .line 55
    .local v22, "$i$a$-also-ArrayMapExtensionsKt$getOrPut$2$iv":I
    move/from16 v23, v1

    move-object/from16 v1, v20

    .end local v20    # "it$iv":Ljava/lang/Object;
    .local v1, "it$iv":Ljava/lang/Object;
    .local v23, "$i$f$getOrPut":I
    invoke-virtual {v0, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v20, v21

    .line 2029
    .end local v0    # "$this$getOrPut$iv":Landroid/util/ArrayMap;
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v22    # "$i$a$-also-ArrayMapExtensionsKt$getOrPut$2$iv":I
    .end local v23    # "$i$f$getOrPut":I
    :goto_2
    check-cast v20, Landroid/util/ArraySet;

    .line 2028
    nop

    .line 2030
    .local v20, "packageNames":Landroid/util/ArraySet;
    invoke-interface {v13}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v1, v20

    .local v1, "$this$plusAssign$iv":Landroid/util/ArraySet;
    const/16 v21, 0x0

    .line 72
    .local v21, "$i$f$plusAssign":I
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_3

    .line 2019
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v1    # "$this$plusAssign$iv":Landroid/util/ArraySet;
    .end local v4    # "$i$a$-use-PermissionService$getAllAppOpPermissionPackages$1":I
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v8    # "$i$f$forEach":I
    .end local v10    # "element$iv":Ljava/util/Map$Entry;
    .end local v11    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1":I
    .end local v12    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v13    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach":I
    .end local v17    # "element$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1$1":I
    .end local v19    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v20    # "packageNames":Landroid/util/ArraySet;
    .end local v21    # "$i$f$plusAssign":I
    .end local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    .line 2032
    .restart local v4    # "$i$a$-use-PermissionService$getAllAppOpPermissionPackages$1":I
    .restart local v5    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v6    # "permissionName":Ljava/lang/String;
    .restart local v8    # "$i$f$forEach":I
    .restart local v10    # "element$iv":Ljava/util/Map$Entry;
    .restart local v11    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1":I
    .restart local v12    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .restart local v13    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v14    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v15    # "$i$f$forEach":I
    .restart local v17    # "element$iv":Ljava/lang/Object;
    .restart local v18    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1$1":I
    .restart local v19    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    :cond_6
    :goto_3
    nop

    .line 3228
    .end local v6    # "permissionName":Ljava/lang/String;
    .end local v18    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1$1":I
    .end local v19    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v0, v25

    .end local v17    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 3238
    .end local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    :cond_7
    move-object/from16 v25, v0

    .line 2033
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v13    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v14    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$forEach":I
    .restart local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    nop

    .line 3227
    .end local v11    # "$i$a$-forEach-PermissionService$getAllAppOpPermissionPackages$1$1":I
    .end local v12    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :goto_5
    move-object/from16 v1, p0

    move-object/from16 v0, v25

    .end local v10    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_0

    .line 3239
    .end local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    :cond_8
    move-object/from16 v25, v0

    .line 2034
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v5    # "$this$forEach$iv":Ljava/util/Map;
    .end local v8    # "$i$f$forEach":I
    .restart local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    nop

    .end local v4    # "$i$a$-use-PermissionService$getAllAppOpPermissionPackages$1":I
    .end local v25    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 2035
    return-object v2

    .line 2019
    :goto_6
    nop

    .end local v2    # "appOpPermissionPackageNames":Landroid/util/ArrayMap;
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v2    # "appOpPermissionPackageNames":Landroid/util/ArrayMap;
    .restart local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    :catchall_1
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 21
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 176
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v4, 0x0

    .line 177
    .local v4, "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 178
    .local v5, "callingUid":I
    invoke-direct {v1, v0, v5}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    .end local v5    # "callingUid":I
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    .line 184
    :catchall_0
    move-exception v0

    move/from16 v4, p1

    :goto_0
    move-object v2, v0

    goto/16 :goto_3

    .line 182
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v4    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    .restart local v5    # "callingUid":I
    :cond_1
    :try_start_1
    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v6, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v7, 0x0

    .line 287
    .local v7, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v8, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "state"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v2

    :cond_2
    invoke-direct {v8, v9}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v8, "$this$getAllPermissionGroups_u24lambda_u244_u24lambda_u242":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 182
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllPermissionGroups$1$permissionGroups$1":I
    iget-object v10, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v10, "$this$getAllPermissionGroups_u24lambda_u244_u24lambda_u242_u24lambda_u241":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v11, 0x0

    .line 182
    .local v11, "$i$a$-with-PermissionService$getAllPermissionGroups$1$permissionGroups$1$1":I
    invoke-virtual {v10, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    .line 287
    .end local v8    # "$this$getAllPermissionGroups_u24lambda_u244_u24lambda_u242":Lcom/android/server/permission/access/GetStateScope;
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllPermissionGroups$1$permissionGroups$1":I
    .end local v10    # "$this$getAllPermissionGroups_u24lambda_u244_u24lambda_u242_u24lambda_u241":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v11    # "$i$a$-with-PermissionService$getAllPermissionGroups$1$permissionGroups$1$1":I
    nop

    .line 182
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v7    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 184
    .local v12, "permissionGroups":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "destination$iv":Ljava/util/Collection;
    move-object v7, v12

    .local v7, "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v8, 0x0

    .line 88
    .local v8, "$i$f$mapNotNullIndexedTo":I
    move-object v9, v7

    .local v9, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v10, 0x0

    .line 47
    .local v10, "$i$f$forEachIndexed":I
    const/4 v11, 0x0

    .local v11, "index$iv$iv":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v13

    :goto_1
    if-ge v11, v13, :cond_5

    .line 48
    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v9, v11}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v11

    .local v14, "key$iv":Ljava/lang/Object;
    .local v15, "value$iv":Ljava/lang/Object;
    .local v16, "index$iv":I
    const/16 v17, 0x0

    .line 88
    .local v17, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    move-object/from16 v18, v15

    check-cast v18, Landroid/content/pm/PermissionGroupInfo;

    move-object/from16 v19, v14

    check-cast v19, Ljava/lang/String;

    move-object/from16 v19, v18

    .local v19, "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    const/16 v18, 0x0

    .line 185
    .local v18, "$i$a$-mapNotNullIndexedTo-PermissionService$getAllPermissionGroups$1$1":I
    move-object/from16 v2, v19

    move/from16 v19, v4

    .end local v4    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    .local v2, "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    .local v19, "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    iget-object v4, v2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_3

    .line 186
    move/from16 v4, p1

    :try_start_2
    invoke-direct {v1, v2, v4}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v20

    goto :goto_2

    .line 184
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v2    # "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    .end local v5    # "callingUid":I
    .end local v6    # "destination$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v8    # "$i$f$mapNotNullIndexedTo":I
    .end local v9    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "$i$f$forEachIndexed":I
    .end local v11    # "index$iv$iv":I
    .end local v12    # "permissionGroups":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v14    # "key$iv":Ljava/lang/Object;
    .end local v15    # "value$iv":Ljava/lang/Object;
    .end local v16    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    .end local v18    # "$i$a$-mapNotNullIndexedTo-PermissionService$getAllPermissionGroups$1$1":I
    .end local v19    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    :catchall_1
    move-exception v0

    goto :goto_0

    .line 188
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v2    # "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    .restart local v5    # "callingUid":I
    .restart local v6    # "destination$iv":Ljava/util/Collection;
    .restart local v7    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v8    # "$i$f$mapNotNullIndexedTo":I
    .restart local v9    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v10    # "$i$f$forEachIndexed":I
    .restart local v11    # "index$iv$iv":I
    .restart local v12    # "permissionGroups":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v14    # "key$iv":Ljava/lang/Object;
    .restart local v15    # "value$iv":Ljava/lang/Object;
    .restart local v16    # "index$iv":I
    .restart local v17    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    .restart local v18    # "$i$a$-mapNotNullIndexedTo-PermissionService$getAllPermissionGroups$1$1":I
    .restart local v19    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    :cond_3
    move/from16 v4, p1

    const/16 v20, 0x0

    .line 189
    :goto_2
    nop

    .line 88
    .end local v2    # "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    .end local v18    # "$i$a$-mapNotNullIndexedTo-PermissionService$getAllPermissionGroups$1$1":I
    if-eqz v20, :cond_4

    move-object/from16 v2, v20

    .line 2945
    .local v2, "it$iv":Ljava/lang/Object;
    const/16 v18, 0x0

    .line 88
    .local v18, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    invoke-interface {v6, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v14    # "key$iv":Ljava/lang/Object;
    .end local v15    # "value$iv":Ljava/lang/Object;
    .end local v16    # "index$iv":I
    .end local v17    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    .end local v18    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    :cond_4
    nop

    .line 47
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v19

    const/4 v2, 0x0

    goto :goto_1

    .end local v19    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    .restart local v4    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    :cond_5
    move/from16 v19, v4

    move/from16 v4, p1

    .line 50
    .end local v4    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    .end local v11    # "index$iv$iv":I
    .restart local v19    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    nop

    .line 89
    .end local v9    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "$i$f$forEachIndexed":I
    nop

    .end local v6    # "destination$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v8    # "$i$f$mapNotNullIndexedTo":I
    nop

    .line 184
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v5    # "callingUid":I
    .end local v12    # "permissionGroups":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v19    # "$i$a$-use-PermissionService$getAllPermissionGroups$1":I
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v6

    :goto_3
    nop

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "flags":I
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "flags":I
    :catchall_2
    move-exception v0

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllPermissionStates(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/Map;
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/permission/PermissionManager$PermissionState;",
            ">;"
        }
    .end annotation

    .line 1176
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1177
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllPermissionStates: Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1180
    :cond_1
    nop

    .line 1181
    nop

    .line 1182
    nop

    .line 1183
    nop

    .line 1184
    nop

    .line 1180
    const/4 v0, 0x1

    const/4 v3, 0x0

    const-string v5, "getAllPermissionStates"

    invoke-direct {v1, v4, v0, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1186
    nop

    .line 1187
    nop

    .line 1188
    nop

    .line 1189
    nop

    .line 1188
    nop

    .line 1190
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v8, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v3, v8, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1188
    nop

    .line 1186
    invoke-direct {v1, v5, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1194
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v5, 0x0

    .line 1194
    .local v5, "$i$a$-use-PermissionService$getAllPermissionStates$packageState$1":I
    :try_start_0
    invoke-interface {v0, v7}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$getAllPermissionStates$packageState$1":I
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1193
    move-object v3, v8

    .line 1195
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-nez v3, :cond_3

    .line 1196
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllPermissionStates: Unknown package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 1200
    :cond_3
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v8, 0x0

    .line 287
    .local v8, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    if-nez v9, :cond_4

    const-string/jumbo v9, "state"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v2, v9

    :goto_0
    invoke-direct {v5, v2}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    move-object v2, v5

    .local v2, "$this$getAllPermissionStates_u24lambda_u2476":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 1202
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllPermissionStates$1":I
    const-string v5, "default:0"

    invoke-static {v6, v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1203
    iget-object v5, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$getAllPermissionStates_u24lambda_u2476_u24lambda_u2473":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v10, 0x0

    .line 1203
    .local v10, "$i$a$-with-PermissionService$getAllPermissionStates$1$permissionFlags$1":I
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v5, v2, v11, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .end local v5    # "$this$getAllPermissionStates_u24lambda_u2476_u24lambda_u2473":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v10    # "$i$a$-with-PermissionService$getAllPermissionStates$1$permissionFlags$1":I
    goto :goto_1

    .line 1205
    :cond_5
    iget-object v5, v1, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    .local v5, "$this$getAllPermissionStates_u24lambda_u2476_u24lambda_u2474":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 v10, 0x0

    .line 1206
    .local v10, "$i$a$-with-PermissionService$getAllPermissionStates$1$permissionFlags$2":I
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v5, v2, v11, v6, v4}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->getAllPermissionFlags(Lcom/android/server/permission/access/GetStateScope;ILjava/lang/String;I)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 1205
    .end local v5    # "$this$getAllPermissionStates_u24lambda_u2476_u24lambda_u2474":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .end local v10    # "$i$a$-with-PermissionService$getAllPermissionStates$1$permissionFlags$2":I
    nop

    :goto_1
    nop

    .line 1202
    if-nez v5, :cond_6

    .line 1208
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    return-object v5

    .line 1202
    :cond_6
    nop

    .line 1201
    move-object v10, v5

    .line 1209
    .local v10, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move-object v11, v5

    .line 1210
    .local v11, "permissionStates":Landroid/util/ArrayMap;
    move-object v12, v10

    .local v12, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v13, 0x0

    .line 47
    .local v13, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .local v5, "index$iv":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v14

    move v15, v5

    .end local v5    # "index$iv":I
    .local v15, "index$iv":I
    :goto_2
    if-ge v15, v14, :cond_7

    .line 48
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    move-object/from16 v17, v0

    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v17, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "flags":I
    check-cast v5, Ljava/lang/String;

    .local v5, "permissionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1211
    .local v16, "$i$a$-forEachIndexed-PermissionService$getAllPermissionStates$1$1":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 1212
    .local v7, "granted":Z
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v1

    .line 1213
    .local v1, "apiFlags":I
    new-instance v4, Landroid/permission/PermissionManager$PermissionState;

    invoke-direct {v4, v7, v1}, Landroid/permission/PermissionManager$PermissionState;-><init>(ZI)V

    .local v4, "value$iv":Ljava/lang/Object;
    move-object v6, v11

    .local v6, "$this$set$iv":Landroid/util/ArrayMap;
    const/16 v18, 0x0

    .line 99
    .local v18, "$i$f$set":I
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    nop

    .line 1214
    .end local v4    # "value$iv":Ljava/lang/Object;
    .end local v6    # "$this$set$iv":Landroid/util/ArrayMap;
    .end local v18    # "$i$f$set":I
    nop

    .line 48
    .end local v0    # "flags":I
    .end local v1    # "apiFlags":I
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v7    # "granted":Z
    .end local v16    # "$i$a$-forEachIndexed-PermissionService$getAllPermissionStates$1$1":I
    nop

    .line 47
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move/from16 v4, p3

    move-object/from16 v0, v17

    goto :goto_2

    .end local v17    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :cond_7
    nop

    .line 50
    .end local v15    # "index$iv":I
    nop

    .line 1215
    .end local v12    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v13    # "$i$f$forEachIndexed":I
    return-object v11

    .line 1194
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$this$getAllPermissionStates_u24lambda_u2476":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v8    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAllPermissionStates$1":I
    .end local v10    # "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v11    # "permissionStates":Landroid/util/ArrayMap;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "deviceId":Ljava/lang/String;
    .end local p3    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "deviceId":Ljava/lang/String;
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/List;
    .locals 22
    .param p1, "protection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 325
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v6, 0x0

    .line 337
    .local v6, "$i$f$getPermissionsWithProtectionOrProtectionFlags":I
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v1, "this_$iv$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    const/4 v7, 0x0

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v7

    :cond_0
    invoke-direct {v3, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v3, "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421$iv":Lcom/android/server/permission/access/GetStateScope;
    const/4 v4, 0x0

    .line 337
    .local v4, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$iv":I
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2962
    .local v5, "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421_u24lambda_u2420$iv":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 337
    .local v8, "$i$a$-with-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$1$iv":I
    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 287
    .end local v3    # "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421$iv":Lcom/android/server/permission/access/GetStateScope;
    .end local v4    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$iv":I
    .end local v5    # "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421_u24lambda_u2420$iv":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$1$iv":I
    nop

    .line 337
    .end local v1    # "this_$iv$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    move-object v8, v5

    .line 339
    .local v8, "permissions$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v8

    .local v9, "$this$mapNotNullIndexedTo$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object v10, v1

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 88
    .local v11, "$i$f$mapNotNullIndexedTo":I
    move-object v12, v9

    .local v12, "$this$forEachIndexed$iv$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v13, 0x0

    .line 47
    .local v13, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .local v1, "index$iv$iv$iv":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v14

    move v15, v1

    .end local v1    # "index$iv$iv$iv":I
    .local v15, "index$iv$iv$iv":I
    :goto_0
    if-ge v15, v14, :cond_4

    .line 48
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    .local v16, "key$iv$iv":Ljava/lang/Object;
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, "value$iv$iv":Ljava/lang/Object;
    move/from16 v18, v15

    .local v18, "index$iv$iv":I
    const/16 v19, 0x0

    .line 88
    .local v19, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv$iv":I
    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .local v1, "permission$iv":Lcom/android/server/permission/access/permission/Permission;
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    const/16 v20, 0x0

    .line 340
    .local v20, "$i$a$-mapNotNullIndexedTo-PermissionService$getPermissionsWithProtectionOrProtectionFlags$1$iv":I
    move-object v2, v1

    .local v2, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 326
    .local v3, "$i$a$-getPermissionsWithProtectionOrProtectionFlags-PermissionService$getAllPermissionsWithProtection$1":I
    move-object v4, v2

    .local v4, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x0

    .line 48
    .local v5, "$i$f$getProtection":I
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    .line 326
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v5    # "$i$f$getProtection":I
    move/from16 v5, p1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 340
    .end local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$a$-getPermissionsWithProtectionOrProtectionFlags-PermissionService$getAllPermissionsWithProtection$1":I
    :goto_1
    if-eqz v4, :cond_2

    .line 341
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    goto :goto_2

    .line 343
    :cond_2
    move-object v2, v7

    .line 344
    :goto_2
    nop

    .line 88
    .end local v1    # "permission$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v20    # "$i$a$-mapNotNullIndexedTo-PermissionService$getPermissionsWithProtectionOrProtectionFlags$1$iv":I
    nop

    nop

    if-eqz v2, :cond_3

    .line 2962
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv$iv":I
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv$iv":I
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "key$iv$iv":Ljava/lang/Object;
    .end local v17    # "value$iv$iv":Ljava/lang/Object;
    .end local v18    # "index$iv$iv":I
    .end local v19    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv$iv":I
    :cond_3
    nop

    .line 47
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_4
    nop

    .line 50
    .end local v15    # "index$iv$iv$iv":I
    nop

    .line 89
    .end local v12    # "$this$forEachIndexed$iv$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v13    # "$i$f$forEachIndexed":I
    nop

    .line 339
    .end local v9    # "$this$mapNotNullIndexedTo$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$mapNotNullIndexedTo":I
    nop

    .line 327
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v6    # "$i$f$getPermissionsWithProtectionOrProtectionFlags":I
    .end local v8    # "permissions$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    return-object v10
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/List;
    .locals 22
    .param p1, "protectionFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 330
    move-object/from16 v0, p0

    .local v0, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v6, 0x0

    .line 337
    .local v6, "$i$f$getPermissionsWithProtectionOrProtectionFlags":I
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v1, "this_$iv$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    const/4 v7, 0x0

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v7

    :cond_0
    invoke-direct {v3, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v3, "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421$iv":Lcom/android/server/permission/access/GetStateScope;
    const/4 v4, 0x0

    .line 337
    .local v4, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$iv":I
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2977
    .local v5, "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421_u24lambda_u2420$iv":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 337
    .local v8, "$i$a$-with-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$1$iv":I
    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 287
    .end local v3    # "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421$iv":Lcom/android/server/permission/access/GetStateScope;
    .end local v4    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$iv":I
    .end local v5    # "$this$getPermissionsWithProtectionOrProtectionFlags_u24lambda_u2421_u24lambda_u2420$iv":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$getPermissionsWithProtectionOrProtectionFlags$permissions$1$1$iv":I
    nop

    .line 337
    .end local v1    # "this_$iv$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    move-object v8, v5

    .line 339
    .local v8, "permissions$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "destination$iv$iv":Ljava/util/Collection;
    move-object v9, v8

    .local v9, "$this$mapNotNullIndexedTo$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object v10, v1

    .end local v1    # "destination$iv$iv":Ljava/util/Collection;
    .local v10, "destination$iv$iv":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 88
    .local v11, "$i$f$mapNotNullIndexedTo":I
    move-object v12, v9

    .local v12, "$this$forEachIndexed$iv$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v13, 0x0

    .line 47
    .local v13, "$i$f$forEachIndexed":I
    const/4 v1, 0x0

    .local v1, "index$iv$iv$iv":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v14

    move v15, v1

    .end local v1    # "index$iv$iv$iv":I
    .local v15, "index$iv$iv$iv":I
    :goto_0
    if-ge v15, v14, :cond_3

    .line 48
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    .local v16, "key$iv$iv":Ljava/lang/Object;
    invoke-virtual {v12, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, "value$iv$iv":Ljava/lang/Object;
    move/from16 v18, v15

    .local v18, "index$iv$iv":I
    const/16 v19, 0x0

    .line 88
    .local v19, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv$iv":I
    move-object/from16 v1, v17

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    .local v1, "permission$iv":Lcom/android/server/permission/access/permission/Permission;
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    const/16 v20, 0x0

    .line 340
    .local v20, "$i$a$-mapNotNullIndexedTo-PermissionService$getPermissionsWithProtectionOrProtectionFlags$1$iv":I
    move-object v2, v1

    .local v2, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$a$-getPermissionsWithProtectionOrProtectionFlags-PermissionService$getAllPermissionsWithProtectionFlags$1":I
    move-object v4, v2

    .local v4, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x0

    .line 63
    .local v5, "$i$f$getProtectionFlags":I
    invoke-virtual {v4}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v4

    .line 331
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v5    # "$i$f$getProtectionFlags":I
    move/from16 v5, p1

    invoke-static {v4, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    .line 340
    .end local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v3    # "$i$a$-getPermissionsWithProtectionOrProtectionFlags-PermissionService$getAllPermissionsWithProtectionFlags$1":I
    if-eqz v2, :cond_1

    .line 341
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    goto :goto_1

    .line 343
    :cond_1
    move-object v2, v7

    .line 344
    :goto_1
    nop

    .line 88
    .end local v1    # "permission$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v20    # "$i$a$-mapNotNullIndexedTo-PermissionService$getPermissionsWithProtectionOrProtectionFlags$1$iv":I
    nop

    nop

    if-eqz v2, :cond_2

    .line 2977
    .local v2, "it$iv$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv$iv":I
    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv$iv":I
    .end local v2    # "it$iv$iv":Ljava/lang/Object;
    .end local v16    # "key$iv$iv":Ljava/lang/Object;
    .end local v17    # "value$iv$iv":Ljava/lang/Object;
    .end local v18    # "index$iv$iv":I
    .end local v19    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv$iv":I
    :cond_2
    nop

    .line 47
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 50
    .end local v15    # "index$iv$iv$iv":I
    nop

    .line 89
    .end local v12    # "$this$forEachIndexed$iv$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v13    # "$i$f$forEachIndexed":I
    nop

    .line 339
    .end local v9    # "$this$mapNotNullIndexedTo$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$i$f$mapNotNullIndexedTo":I
    nop

    .line 332
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v6    # "$i$f$getPermissionsWithProtectionOrProtectionFlags":I
    .end local v8    # "permissions$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    return-object v10
.end method

.method public getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowlistedFlags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1600
    if-eqz p1, :cond_c

    .line 1601
    const/4 v0, 0x7

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 1602
    const-string/jumbo v0, "userId cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 1604
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1605
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowlistedRestrictedPermission api: Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    return-object v1

    .line 1609
    :cond_1
    nop

    .line 1610
    nop

    .line 1611
    nop

    .line 1612
    nop

    .line 1613
    nop

    .line 1609
    const/4 v0, 0x0

    const-string v2, "getAllowlistedRestrictedPermissions"

    invoke-direct {p0, p3, v0, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1618
    .local v2, "callingUid":I
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v3, :cond_2

    const-string/jumbo v3, "packageManagerLocal"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-direct {p0, v3, v2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    move-object v4, v3

    .local v4, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v5, 0x0

    .line 1619
    .local v5, "$i$a$-use-PermissionService$getAllowlistedRestrictedPermissions$packageState$1":I
    :try_start_0
    invoke-interface {v4, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    .end local v4    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$getAllowlistedRestrictedPermissions$packageState$1":I
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v6, :cond_3

    .line 1620
    return-object v1

    .line 1618
    :cond_3
    nop

    .line 1617
    nop

    .line 1621
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    .line 1624
    .local v3, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_4
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1625
    nop

    .line 1624
    const-string v5, "android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    move v0, v5

    .line 1623
    :cond_5
    nop

    .line 1628
    .local v0, "isCallerPrivileged":Z
    nop

    .line 1629
    invoke-static {p2, v5}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1630
    if-eqz v0, :cond_6

    goto :goto_0

    .line 1632
    :cond_6
    new-instance v1, Ljava/lang/SecurityException;

    .line 1633
    nop

    .line 1632
    const-string v4, "Querying system allowlist requires android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1639
    :cond_7
    :goto_0
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v4, :cond_8

    const-string/jumbo v4, "packageManagerInternal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v1, v4

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManagerInternal;->isCallerInstallerOfRecord(Lcom/android/server/pm/pkg/AndroidPackage;I)Z

    move-result v1

    .line 1638
    nop

    .line 1641
    .local v1, "isCallerInstallerOnRecord":Z
    nop

    .line 1642
    nop

    .line 1643
    nop

    .line 1642
    const/4 v4, 0x6

    invoke-static {p2, v4}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1647
    if-nez v0, :cond_9

    if-eqz v1, :cond_a

    :cond_9
    goto :goto_2

    .line 1648
    :cond_a
    new-instance v4, Ljava/lang/SecurityException;

    .line 1649
    nop

    .line 1648
    const-string v5, "Querying upgrade or installer allowlist requires being installer on record or android.permission.WHITELIST_RESTRICTED_PERMISSIONS"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1655
    :cond_b
    :goto_2
    nop

    .line 1656
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v4

    .line 1657
    nop

    .line 1658
    nop

    .line 1655
    invoke-direct {p0, v4, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissionsUnchecked(III)Ljava/util/ArrayList;

    move-result-object v4

    return-object v4

    .line 1618
    .end local v0    # "isCallerPrivileged":Z
    .end local v1    # "isCallerInstallerOnRecord":Z
    .end local v3    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :catchall_0
    move-exception v0

    .end local v2    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowlistedFlags":I
    .end local p3    # "userId":I
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v2    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "allowlistedFlags":I
    .restart local p3    # "userId":I
    :catchall_1
    move-exception v1

    invoke-static {v3, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    .line 2940
    .end local v2    # "callingUid":I
    :cond_c
    const/4 v0, 0x0

    .line 1600
    .local v0, "$i$a$-requireNotNull-PermissionService$getAllowlistedRestrictedPermissions$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-PermissionService$getAllowlistedRestrictedPermissions$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 18
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 1993
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_8

    .line 1994
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v0

    .line 1996
    .local v3, "packageNames":Landroid/util/ArraySet;
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "state"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_0
    invoke-direct {v5, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v5, "$this$getAppOpPermissionPackages_u24lambda_u24127":Lcom/android/server/permission/access/GetStateScope;
    const/4 v6, 0x0

    .line 1996
    .local v6, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAppOpPermissionPackages$permission$1":I
    iget-object v8, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v8, "$this$getAppOpPermissionPackages_u24lambda_u24127_u24lambda_u24126":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v9, 0x0

    .line 1996
    .local v9, "$i$a$-with-PermissionService$getAppOpPermissionPackages$permission$1$1":I
    invoke-virtual {v8, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v5    # "$this$getAppOpPermissionPackages_u24lambda_u24127":Lcom/android/server/permission/access/GetStateScope;
    .end local v6    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getAppOpPermissionPackages$permission$1":I
    .end local v8    # "$this$getAppOpPermissionPackages_u24lambda_u24127_u24lambda_u24126":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$i$a$-with-PermissionService$getAppOpPermissionPackages$permission$1$1":I
    nop

    .line 1996
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v4    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 1997
    .local v10, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/4 v0, 0x0

    if-eqz v10, :cond_1

    move-object v4, v10

    .local v4, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x0

    .line 66
    .local v5, "$i$f$isAppOp":I
    move-object v6, v4

    .local v6, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v8, 0x0

    .line 63
    .local v8, "$i$f$getProtectionFlags":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v6

    .line 66
    .end local v6    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v8    # "$i$f$getProtectionFlags":I
    const/16 v8, 0x40

    invoke-static {v6, v8}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v4

    .line 1997
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v5    # "$i$f$isAppOp":I
    if-nez v4, :cond_2

    .line 1998
    :cond_1
    move-object v4, v3

    .local v4, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 3214
    .local v5, "$i$f$toTypedArray":I
    nop

    .line 3215
    move-object v6, v4

    .line 3217
    .local v6, "thisCollection$iv":Ljava/util/Collection;
    new-array v8, v0, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2001
    .end local v4    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v5    # "$i$f$toTypedArray":I
    .end local v6    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    iget-object v4, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v4, :cond_3

    const-string/jumbo v4, "packageManagerLocal"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_3
    invoke-interface {v4}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v4

    move-object v5, v4

    .local v5, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v6, 0x0

    .line 2002
    .local v6, "$i$a$-use-PermissionService$getAppOpPermissionPackages$2":I
    :try_start_0
    invoke-interface {v5}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v8

    .local v8, "$this$forEach$iv":Ljava/util/Map;
    const/4 v9, 0x0

    .line 3218
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .local v12, "element$iv":Ljava/util/Map$Entry;
    const/4 v13, 0x0

    .line 2002
    .local v13, "$i$a$-forEach-PermissionService$getAppOpPermissionPackages$2$1":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageState;

    .line 2003
    .local v14, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2004
    goto :goto_2

    .line 2006
    :cond_4
    invoke-interface {v14}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v15

    if-nez v15, :cond_5

    goto :goto_2

    .line 2007
    .local v15, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :cond_5
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2008
    invoke-interface {v15}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "value$iv":Ljava/lang/Object;
    move-object/from16 v16, v3

    .local v16, "$this$plusAssign$iv":Landroid/util/ArraySet;
    const/16 v17, 0x0

    .line 72
    .local v17, "$i$f$plusAssign":I
    move-object/from16 v7, v16

    .end local v16    # "$this$plusAssign$iv":Landroid/util/ArraySet;
    .local v7, "$this$plusAssign$iv":Landroid/util/ArraySet;
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 2001
    .end local v0    # "value$iv":Ljava/lang/Object;
    .end local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getAppOpPermissionPackages$2":I
    .end local v7    # "$this$plusAssign$iv":Landroid/util/ArraySet;
    .end local v8    # "$this$forEach$iv":Ljava/util/Map;
    .end local v9    # "$i$f$forEach":I
    .end local v12    # "element$iv":Ljava/util/Map$Entry;
    .end local v13    # "$i$a$-forEach-PermissionService$getAppOpPermissionPackages$2$1":I
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v15    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v17    # "$i$f$plusAssign":I
    :catchall_0
    move-exception v0

    move-object v5, v0

    goto :goto_3

    .line 2010
    .restart local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getAppOpPermissionPackages$2":I
    .restart local v8    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v9    # "$i$f$forEach":I
    .restart local v12    # "element$iv":Ljava/util/Map$Entry;
    .restart local v13    # "$i$a$-forEach-PermissionService$getAppOpPermissionPackages$2$1":I
    .restart local v14    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :cond_6
    :goto_1
    nop

    .line 3218
    .end local v13    # "$i$a$-forEach-PermissionService$getAppOpPermissionPackages$2$1":I
    .end local v14    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :goto_2
    const/4 v0, 0x0

    .end local v12    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 3221
    :cond_7
    nop

    .line 2011
    .end local v8    # "$this$forEach$iv":Ljava/util/Map;
    .end local v9    # "$i$f$forEach":I
    nop

    .end local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getAppOpPermissionPackages$2":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 2013
    move-object v0, v3

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 3222
    .local v4, "$i$f$toTypedArray":I
    nop

    .line 3223
    move-object v5, v0

    .line 3225
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v0, [Ljava/lang/String;

    .line 2013
    return-object v0

    .line 2001
    :goto_3
    nop

    .end local v3    # "packageNames":Landroid/util/ArraySet;
    .end local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionName":Ljava/lang/String;
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "packageNames":Landroid/util/ArraySet;
    .restart local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v4, v5}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 2940
    .end local v3    # "packageNames":Landroid/util/ArraySet;
    .end local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_8
    const/4 v0, 0x0

    .line 1993
    .local v0, "$i$a$-requireNotNull-PermissionService$getAppOpPermissionPackages$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-PermissionService$getAppOpPermissionPackages$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "permissionName cannot be null"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDefaultPermissionGrantFingerprint(I)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I

    .line 2366
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-direct {v2, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$getDefaultPermissionGrantFingerprint_u24lambda_u24188":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 2366
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getDefaultPermissionGrantFingerprint$1":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/GetStateScope;->getState()Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lcom/android/server/permission/access/UserState;

    invoke-virtual {v4}, Lcom/android/server/permission/access/UserState;->getDefaultPermissionGrantFingerprint()Ljava/lang/String;

    move-result-object v2

    .line 287
    .end local v2    # "$this$getDefaultPermissionGrantFingerprint_u24lambda_u24188":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getDefaultPermissionGrantFingerprint$1":I
    nop

    .line 2366
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-object v2
.end method

.method public getGidsForUid(I)[I
    .locals 19
    .param p1, "uid"    # I

    .line 715
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 716
    .local v1, "appId":I
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 717
    .local v2, "userId":I
    iget-object v3, v0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string/jumbo v3, "systemConfig"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v3

    .line 718
    .local v3, "globalGids":[I
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v5, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v7, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "state"

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v8

    :goto_0
    invoke-direct {v7, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v7, "$this$getGidsForUid_u24lambda_u2458":Lcom/android/server/permission/access/GetStateScope;
    const/4 v4, 0x0

    .line 724
    .local v4, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getGidsForUid$1":I
    iget-object v8, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v8, "$this$getGidsForUid_u24lambda_u2458_u24lambda_u2455":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v9, 0x0

    .line 724
    .local v9, "$i$a$-with-PermissionService$getGidsForUid$1$permissionFlags$1":I
    invoke-virtual {v8, v7, v1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v8

    .end local v8    # "$this$getGidsForUid_u24lambda_u2458_u24lambda_u2455":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$i$a$-with-PermissionService$getGidsForUid$1$permissionFlags$1":I
    if-nez v8, :cond_2

    array-length v8, v3

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    const-string v9, "copyOf(...)"

    invoke-static {v8, v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8

    .line 723
    :cond_2
    nop

    .line 726
    .local v8, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-static {v3}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v9

    .line 727
    .local v9, "gids":Landroid/util/IntArray;
    move-object v10, v8

    .local v10, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v11, 0x0

    .line 47
    .local v11, "$i$f$forEachIndexed":I
    const/4 v12, 0x0

    .local v12, "index$iv":I
    invoke-virtual {v10}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v13

    :goto_1
    if-ge v12, v13, :cond_7

    .line 48
    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v12}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    .local v15, "flags":I
    check-cast v14, Ljava/lang/String;

    .local v14, "permissionName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 728
    .local v16, "$i$a$-forEachIndexed-PermissionService$getGidsForUid$1$1":I
    move/from16 v17, v1

    .end local v1    # "appId":I
    .local v17, "appId":I
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v15}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 729
    goto :goto_3

    .line 733
    :cond_3
    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v1, "$this$getGidsForUid_u24lambda_u2458_u24lambda_u2457_u24lambda_u2456":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v18, 0x0

    .line 733
    .local v18, "$i$a$-with-PermissionService$getGidsForUid$1$1$permission$1":I
    invoke-virtual {v1, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    .end local v1    # "$this$getGidsForUid_u24lambda_u2458_u24lambda_u2457_u24lambda_u2456":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v18    # "$i$a$-with-PermissionService$getGidsForUid$1$1$permission$1":I
    if-nez v0, :cond_4

    goto :goto_3

    .line 732
    :cond_4
    nop

    .line 734
    .local v0, "permission":Lcom/android/server/permission/access/permission/Permission;
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object v1

    .line 735
    .local v1, "permissionGids":[I
    move-object/from16 v18, v0

    .end local v0    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .local v18, "permission":Lcom/android/server/permission/access/permission/Permission;
    array-length v0, v1

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 736
    goto :goto_3

    .line 738
    :cond_6
    invoke-virtual {v9, v1}, Landroid/util/IntArray;->addAll([I)V

    .line 739
    nop

    .line 48
    .end local v1    # "permissionGids":[I
    .end local v14    # "permissionName":Ljava/lang/String;
    .end local v15    # "flags":I
    .end local v16    # "$i$a$-forEachIndexed-PermissionService$getGidsForUid$1$1":I
    .end local v18    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :goto_3
    nop

    .line 47
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto :goto_1

    .end local v17    # "appId":I
    .local v1, "appId":I
    :cond_7
    nop

    .line 50
    .end local v12    # "index$iv":I
    nop

    .line 740
    .end local v10    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v11    # "$i$f$forEachIndexed":I
    invoke-virtual {v9}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .locals 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 682
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v4, p2

    if-eqz v7, :cond_7

    .line 683
    const-string/jumbo v0, "userId"

    invoke-static {v4, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 686
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v2

    move-object v0, v2

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v3, 0x0

    .line 686
    .local v3, "$i$a$-use-PermissionService$getGrantedPermissions$packageState$1":I
    :try_start_0
    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v3    # "$i$a$-use-PermissionService$getGrantedPermissions$packageState$1":I
    invoke-static {v2, v8}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 685
    move-object v3, v5

    .line 687
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-nez v3, :cond_1

    .line 688
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getGrantedPermissions: Unknown package "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 692
    :cond_1
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v9, 0x0

    .line 287
    .local v9, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v8

    :cond_2
    invoke-direct {v2, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$getGrantedPermissions_u24lambda_u2454":Lcom/android/server/permission/access/GetStateScope;
    const/4 v10, 0x0

    .line 694
    .local v10, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getGrantedPermissions$2":I
    iget-object v5, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$getGrantedPermissions_u24lambda_u2454_u24lambda_u2452":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v6, 0x0

    .line 694
    .local v6, "$i$a$-with-PermissionService$getGrantedPermissions$2$permissionFlags$1":I
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v11

    invoke-virtual {v5, v2, v11, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .end local v5    # "$this$getGrantedPermissions_u24lambda_u2454_u24lambda_u2452":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v6    # "$i$a$-with-PermissionService$getGrantedPermissions$2$permissionFlags$1":I
    if-nez v5, :cond_3

    .line 695
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5

    .line 694
    :cond_3
    nop

    .line 693
    move-object v11, v5

    .line 697
    .local v11, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v5

    .local v12, "destination$iv":Ljava/util/Collection;
    move-object v13, v11

    .local v13, "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v14, 0x0

    .line 88
    .local v14, "$i$f$mapNotNullIndexedTo":I
    move-object v15, v13

    .local v15, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v16, 0x0

    .line 47
    .local v16, "$i$f$forEachIndexed":I
    const/4 v5, 0x0

    .local v5, "index$iv$iv":I
    invoke-virtual {v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_6

    .line 48
    invoke-virtual {v15, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    .local v17, "key$iv":Ljava/lang/Object;
    invoke-virtual {v15, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    .local v18, "value$iv":Ljava/lang/Object;
    move/from16 v19, v5

    .local v19, "index$iv":I
    const/16 v20, 0x0

    .line 88
    .local v20, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    move-object/from16 v21, v18

    check-cast v21, Ljava/lang/Number;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move/from16 v21, v5

    .end local v5    # "index$iv$iv":I
    .local v21, "index$iv$iv":I
    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    .local v5, "permissionName":Ljava/lang/String;
    const/16 v22, 0x0

    .line 698
    .local v22, "$i$a$-mapNotNullIndexedTo-PermissionService$getGrantedPermissions$2$1":I
    nop

    .line 699
    nop

    .line 700
    nop

    .line 701
    nop

    .line 702
    nop

    .line 703
    nop

    .line 699
    move/from16 v23, v6

    const-string v6, "default:0"

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 706
    move-object v1, v5

    goto :goto_1

    .line 708
    :cond_4
    move-object v1, v8

    .line 709
    :goto_1
    nop

    .line 88
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v22    # "$i$a$-mapNotNullIndexedTo-PermissionService$getGrantedPermissions$2$1":I
    nop

    nop

    if-eqz v1, :cond_5

    .line 3047
    .local v1, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 88
    .local v4, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    invoke-interface {v12, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    .end local v17    # "key$iv":Ljava/lang/Object;
    .end local v18    # "value$iv":Ljava/lang/Object;
    .end local v19    # "index$iv":I
    .end local v20    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    :cond_5
    nop

    .line 47
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v6, v23

    .end local v21    # "index$iv$iv":I
    .local v5, "index$iv$iv":I
    goto :goto_0

    :cond_6
    nop

    .line 50
    .end local v5    # "index$iv$iv":I
    nop

    .line 89
    .end local v15    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v16    # "$i$f$forEachIndexed":I
    nop

    .line 697
    .end local v12    # "destination$iv":Ljava/util/Collection;
    .end local v13    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v14    # "$i$f$mapNotNullIndexedTo":I
    return-object v12

    .line 686
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$this$getGrantedPermissions_u24lambda_u2454":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v9    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v10    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getGrantedPermissions$2":I
    .end local v11    # "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 2940
    :cond_7
    const/4 v0, 0x0

    .line 682
    .local v0, "$i$a$-requireNotNull-PermissionService$getGrantedPermissions$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-PermissionService$getGrantedPermissions$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstalledPermissions(Ljava/lang/String;)Ljava/util/Set;
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_4

    .line 358
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_0
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v4, "$this$getInstalledPermissions_u24lambda_u2427":Lcom/android/server/permission/access/GetStateScope;
    const/4 v5, 0x0

    .line 358
    .local v5, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getInstalledPermissions$permissions$1":I
    iget-object v7, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v7, "$this$getInstalledPermissions_u24lambda_u2427_u24lambda_u2426":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 358
    .local v8, "$i$a$-with-PermissionService$getInstalledPermissions$permissions$1$1":I
    invoke-virtual {v7, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 287
    .end local v4    # "$this$getInstalledPermissions_u24lambda_u2427":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getInstalledPermissions$permissions$1":I
    .end local v7    # "$this$getInstalledPermissions_u24lambda_u2427_u24lambda_u2426":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v8    # "$i$a$-with-PermissionService$getInstalledPermissions$permissions$1$1":I
    nop

    .line 358
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 360
    .local v7, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .local v2, "destination$iv":Ljava/util/Collection;
    move-object v3, v7

    .local v3, "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v4, 0x0

    .line 88
    .local v4, "$i$f$mapNotNullIndexedTo":I
    move-object v5, v3

    .local v5, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v8, 0x0

    .line 47
    .local v8, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    :goto_0
    if-ge v9, v10, :cond_3

    .line 48
    invoke-virtual {v5, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    .local v11, "key$iv":Ljava/lang/Object;
    invoke-virtual {v5, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "value$iv":Ljava/lang/Object;
    move v13, v9

    .local v13, "index$iv":I
    const/4 v14, 0x0

    .line 88
    .local v14, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    move-object v15, v12

    check-cast v15, Lcom/android/server/permission/access/permission/Permission;

    .local v15, "permission":Lcom/android/server/permission/access/permission/Permission;
    move-object/from16 v16, v11

    check-cast v16, Ljava/lang/String;

    const/16 v16, 0x0

    .line 361
    .local v16, "$i$a$-mapNotNullIndexedTo-PermissionService$getInstalledPermissions$2":I
    move-object/from16 v17, v15

    .local v17, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v18, 0x0

    .line 36
    .local v18, "$i$f$getPackageName":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 361
    .end local v17    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v18    # "$i$f$getPackageName":I
    invoke-static {v6, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 362
    move-object v6, v15

    .local v6, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v17, 0x0

    .line 33
    .local v17, "$i$f$getName":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .end local v6    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v17    # "$i$f$getName":I
    goto :goto_1

    .line 364
    :cond_1
    const/4 v0, 0x0

    .line 365
    :goto_1
    nop

    .line 88
    .end local v15    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v16    # "$i$a$-mapNotNullIndexedTo-PermissionService$getInstalledPermissions$2":I
    nop

    nop

    if-eqz v0, :cond_2

    .line 3004
    .local v0, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 88
    .local v6, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v0    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    .end local v11    # "key$iv":Ljava/lang/Object;
    .end local v12    # "value$iv":Ljava/lang/Object;
    .end local v13    # "index$iv":I
    .end local v14    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    :cond_2
    nop

    .line 47
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    nop

    .line 50
    .end local v9    # "index$iv$iv":I
    nop

    .line 89
    .end local v5    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v8    # "$i$f$forEachIndexed":I
    nop

    .line 360
    .end local v2    # "destination$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$i$f$mapNotNullIndexedTo":I
    return-object v2

    .line 2940
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_4
    const/4 v0, 0x0

    .line 356
    .local v0, "$i$a$-requireNotNull-PermissionService$getInstalledPermissions$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-PermissionService$getInstalledPermissions$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "packageName cannot be null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .locals 31
    .param p1, "appId"    # I

    .line 2337
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/pm/permission/LegacyPermissionState;

    invoke-direct {v1}, Lcom/android/server/pm/permission/LegacyPermissionState;-><init>()V

    .line 2338
    .local v1, "legacyState":Lcom/android/server/pm/permission/LegacyPermissionState;
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v2, "userManagerService"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v2

    .line 2339
    .local v2, "userIds":[I
    iget-object v4, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v4, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v5, 0x0

    .line 287
    .local v5, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v6, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v7, "state"

    invoke-static {v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, v7

    :goto_0
    invoke-direct {v6, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v6, "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 2340
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    iget-object v7, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v7, "$this$getLegacyPermissionState_u24lambda_u24187_u24lambda_u24183":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v8, 0x0

    .line 2340
    .local v8, "$i$a$-with-PermissionService$getLegacyPermissionState$1$permissions$1":I
    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    .line 2341
    .end local v8    # "$i$a$-with-PermissionService$getLegacyPermissionState$1$permissions$1":I
    .local v7, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object v8, v2

    .local v8, "$this$forEachIndexed$iv":[I
    const/4 v9, 0x0

    .line 3379
    .local v9, "$i$f$forEachIndexed":I
    const/4 v10, 0x0

    .line 3380
    .local v10, "index$iv":I
    array-length v11, v8

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v11, :cond_6

    aget v14, v8, v13

    .local v14, "item$iv":I
    add-int/lit8 v10, v10, 0x1

    move v15, v14

    .local v15, "userId":I
    const/16 v16, 0x0

    .line 2343
    .local v16, "$i$a$-forEachIndexed-PermissionService$getLegacyPermissionState$1$1":I
    iget-object v12, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v12, "$this$getLegacyPermissionState_u24lambda_u24187_u24lambda_u24186_u24lambda_u24184":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v17, 0x0

    .line 2343
    .local v17, "$i$a$-with-PermissionService$getLegacyPermissionState$1$1$permissionFlags$1":I
    move/from16 v0, p1

    invoke-virtual {v12, v6, v0, v15}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    .end local v12    # "$this$getLegacyPermissionState_u24lambda_u24187_u24lambda_u24186_u24lambda_u24184":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v17    # "$i$a$-with-PermissionService$getLegacyPermissionState$1$1$permissionFlags$1":I
    if-nez v12, :cond_2

    move-object/from16 v20, v2

    move/from16 v24, v3

    move-object/from16 v30, v4

    move/from16 v27, v5

    move-object/from16 v25, v6

    goto/16 :goto_5

    .line 2342
    :cond_2
    nop

    .line 2345
    .local v12, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object/from16 v17, v12

    .local v17, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v18, 0x0

    .line 47
    .local v18, "$i$f$forEachIndexed":I
    const/16 v19, 0x0

    .local v19, "index$iv":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v0

    move-object/from16 v20, v2

    move/from16 v2, v19

    .end local v19    # "index$iv":I
    .local v2, "index$iv":I
    .local v20, "userIds":[I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 48
    move/from16 v19, v0

    move-object/from16 v0, v17

    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v0, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Number;

    move-object/from16 v22, v0

    .end local v0    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v22, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Number;->intValue()I

    move-result v0

    move/from16 v21, v2

    .end local v2    # "index$iv":I
    .local v0, "flags":I
    .local v21, "index$iv":I
    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .local v2, "permissionName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 2346
    .local v17, "$i$a$-forEachIndexed-PermissionService$getLegacyPermissionState$1$1$1":I
    invoke-virtual {v7, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/permission/access/permission/Permission;

    if-nez v23, :cond_3

    move/from16 v24, v3

    move-object/from16 v30, v4

    move/from16 v27, v5

    move-object/from16 v25, v6

    goto :goto_4

    .line 2348
    .local v23, "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_3
    move/from16 v24, v3

    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .local v24, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    new-instance v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 2349
    nop

    .line 2350
    move-object/from16 v25, v23

    .local v25, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v26, 0x0

    .line 57
    .local v26, "$i$f$isRuntime":I
    move-object/from16 v27, v25

    .local v27, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v28, 0x0

    .line 48
    .local v28, "$i$f$getProtection":I
    invoke-virtual/range {v27 .. v27}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v29

    move-object/from16 v30, v4

    .end local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v30, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    invoke-virtual/range {v29 .. v29}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v4

    .line 57
    .end local v27    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v28    # "$i$f$getProtection":I
    move/from16 v27, v5

    .end local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .local v27, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 2351
    .end local v25    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v26    # "$i$f$isRuntime":I
    :goto_3
    sget-object v4, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v4, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->isPermissionGranted(I)Z

    move-result v4

    .line 2352
    move-object/from16 v25, v6

    .end local v6    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .local v25, "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    sget-object v6, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v6, v0}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v6

    .line 2348
    invoke-direct {v3, v2, v5, v4, v6}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    .line 2347
    nop

    .line 2354
    .local v3, "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    invoke-virtual {v1, v3, v15}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 2355
    nop

    .line 48
    .end local v0    # "flags":I
    .end local v2    # "permissionName":Ljava/lang/String;
    .end local v3    # "legacyPermissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v17    # "$i$a$-forEachIndexed-PermissionService$getLegacyPermissionState$1$1$1":I
    .end local v23    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :goto_4
    nop

    .line 47
    add-int/lit8 v2, v21, 0x1

    move/from16 v0, v19

    move-object/from16 v17, v22

    move/from16 v3, v24

    move-object/from16 v6, v25

    move/from16 v5, v27

    move-object/from16 v4, v30

    .end local v21    # "index$iv":I
    .local v2, "index$iv":I
    goto :goto_2

    .end local v22    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v24    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .end local v25    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .end local v27    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v30    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .restart local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v6    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .local v17, "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_5
    move/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v30, v4

    move/from16 v27, v5

    move-object/from16 v25, v6

    move-object/from16 v22, v17

    .line 50
    .end local v2    # "index$iv":I
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v6    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .end local v17    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v22    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v24    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .restart local v25    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .restart local v27    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v30    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    nop

    .line 2356
    .end local v18    # "$i$f$forEachIndexed":I
    .end local v22    # "$this$forEachIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 3380
    .end local v12    # "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v15    # "userId":I
    .end local v16    # "$i$a$-forEachIndexed-PermissionService$getLegacyPermissionState$1$1":I
    :goto_5
    nop

    .end local v14    # "item$iv":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v6, v25

    move/from16 v5, v27

    move-object/from16 v4, v30

    goto/16 :goto_1

    .line 3386
    .end local v20    # "userIds":[I
    .end local v24    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .end local v25    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .end local v27    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v30    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v2, "userIds":[I
    .restart local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .restart local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v6    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    :cond_6
    nop

    .line 2357
    .end local v8    # "$this$forEachIndexed$iv":[I
    .end local v9    # "$i$f$forEachIndexed":I
    .end local v10    # "index$iv":I
    nop

    .line 287
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissionState$1":I
    .end local v6    # "$this$getLegacyPermissionState_u24lambda_u24187":Lcom/android/server/permission/access/GetStateScope;
    .end local v7    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 2358
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-object v1
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 2303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .line 2304
    nop

    .local v1, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v2, 0x0

    .line 287
    .local v2, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    invoke-direct {v3, v4}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v3, "$this$getLegacyPermissions_u24lambda_u24177":Lcom/android/server/permission/access/GetStateScope;
    const/4 v4, 0x0

    .line 2304
    .local v4, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissions$1":I
    iget-object v5, v0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$getLegacyPermissions_u24lambda_u24177_u24lambda_u24176":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v6, 0x0

    .line 2304
    .local v6, "$i$a$-with-PermissionService$getLegacyPermissions$1$1":I
    invoke-virtual {v5, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 287
    .end local v3    # "$this$getLegacyPermissions_u24lambda_u24177":Lcom/android/server/permission/access/GetStateScope;
    .end local v4    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getLegacyPermissions$1":I
    .end local v5    # "$this$getLegacyPermissions_u24lambda_u24177_u24lambda_u24176":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v6    # "$i$a$-with-PermissionService$getLegacyPermissions$1$1":I
    nop

    .line 2305
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "destination$iv":Ljava/util/Collection;
    .local v5, "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v2, 0x0

    .line 80
    .local v2, "$i$f$mapIndexedTo":I
    move-object v3, v5

    .local v3, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v4, 0x0

    .line 47
    .local v4, "$i$f$forEachIndexed":I
    const/4 v6, 0x0

    .local v6, "index$iv$iv":I
    invoke-virtual {v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_1

    .line 48
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    .local v8, "key$iv":Ljava/lang/Object;
    invoke-virtual {v3, v6}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    .local v9, "value$iv":Ljava/lang/Object;
    move v10, v6

    .local v10, "index$iv":I
    const/4 v11, 0x0

    .line 80
    .local v11, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapIndexedTo$1$iv":I
    move-object v12, v9

    check-cast v12, Lcom/android/server/permission/access/permission/Permission;

    .local v12, "permission":Lcom/android/server/permission/access/permission/Permission;
    move-object v13, v8

    check-cast v13, Ljava/lang/String;

    const/4 v13, 0x0

    .line 2306
    .local v13, "$i$a$-mapIndexedTo-PermissionService$getLegacyPermissions$2":I
    new-instance v14, Lcom/android/server/pm/permission/LegacyPermission;

    .line 2307
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v15

    .line 2308
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v0

    .line 2309
    move/from16 v16, v2

    .end local v2    # "$i$f$mapIndexedTo":I
    .local v16, "$i$f$mapIndexedTo":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v2

    .line 2310
    move-object/from16 v17, v3

    .end local v3    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v17, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v3

    .line 2306
    invoke-direct {v14, v15, v0, v2, v3}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Landroid/content/pm/PermissionInfo;II[I)V

    .line 2311
    nop

    .line 80
    .end local v12    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v13    # "$i$a$-mapIndexedTo-PermissionService$getLegacyPermissions$2":I
    nop

    .line 3368
    .local v14, "it$iv":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 80
    .local v0, "$i$a$-let-IndexedMapExtensionsKt$mapIndexedTo$1$1$iv":I
    invoke-interface {v1, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v0    # "$i$a$-let-IndexedMapExtensionsKt$mapIndexedTo$1$1$iv":I
    .end local v8    # "key$iv":Ljava/lang/Object;
    .end local v9    # "value$iv":Ljava/lang/Object;
    .end local v10    # "index$iv":I
    .end local v11    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapIndexedTo$1$iv":I
    .end local v14    # "it$iv":Ljava/lang/Object;
    nop

    .line 47
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_0

    .end local v16    # "$i$f$mapIndexedTo":I
    .end local v17    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v2    # "$i$f$mapIndexedTo":I
    .restart local v3    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_1
    nop

    .line 50
    .end local v6    # "index$iv$iv":I
    nop

    .line 81
    .end local v3    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$i$f$forEachIndexed":I
    nop

    .line 2312
    .end local v1    # "destination$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$mapIndexedTo":I
    .end local v5    # "$this$mapIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    return-object v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1132
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 1133
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPermissionFlags: Unknown user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return v2

    .line 1137
    :cond_1
    nop

    .line 1138
    nop

    .line 1139
    nop

    .line 1140
    nop

    .line 1141
    nop

    .line 1137
    const/4 v0, 0x1

    const-string v3, "getPermissionFlags"

    invoke-direct {p0, p4, v0, v2, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1143
    nop

    .line 1144
    nop

    .line 1145
    nop

    .line 1146
    nop

    .line 1145
    nop

    .line 1147
    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string v5, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v6, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v5, v6, v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1145
    nop

    .line 1143
    invoke-direct {p0, v3, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withFilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v5, 0x0

    .line 1151
    .local v5, "$i$a$-use-PermissionService$getPermissionFlags$packageState$1":I
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$getPermissionFlags$packageState$1":I
    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1150
    move-object v0, v6

    .line 1152
    .local v0, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-nez v0, :cond_3

    .line 1153
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPermissionFlags: Unknown package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return v2

    .line 1157
    :cond_3
    iget-object v7, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v7, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v8, 0x0

    .line 287
    .local v8, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    :goto_0
    invoke-direct {v3, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v3, "$this$getPermissionFlags_u24lambda_u2471":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 1158
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionFlags$1":I
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v1, "$this$getPermissionFlags_u24lambda_u2471_u24lambda_u2470":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v5, 0x0

    .line 1158
    .local v5, "$i$a$-with-PermissionService$getPermissionFlags$1$permission$1":I
    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Lcom/android/server/permission/access/permission/Permission;

    .line 1159
    .end local v1    # "$this$getPermissionFlags_u24lambda_u2471_u24lambda_u2470":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v5    # "$i$a$-with-PermissionService$getPermissionFlags$1$permission$1":I
    .local v10, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-nez v10, :cond_5

    .line 1160
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPermissionFlags: Unknown permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return v2

    .line 1165
    :cond_5
    move-object v2, v3

    .end local v3    # "$this$getPermissionFlags_u24lambda_u2471":Lcom/android/server/permission/access/GetStateScope;
    .local v2, "$this$getPermissionFlags_u24lambda_u2471":Lcom/android/server/permission/access/GetStateScope;
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1164
    nop

    .line 1167
    .local v3, "flags":I
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionFlags;->INSTANCE:Lcom/android/server/permission/access/permission/PermissionFlags;

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/permission/PermissionFlags;->toApiFlags(I)I

    move-result v1

    return v1

    .line 1151
    .end local v0    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v2    # "$this$getPermissionFlags_u24lambda_u2471":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "flags":I
    .end local v7    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionFlags$1":I
    .end local v10    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .locals 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 350
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-direct {v2, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$getPermissionGids_u24lambda_u2424":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 350
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionGids$permission$1":I
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v4, "$this$getPermissionGids_u24lambda_u2424_u24lambda_u2423":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v5, 0x0

    .line 350
    .local v5, "$i$a$-with-PermissionService$getPermissionGids$permission$1$1":I
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v2    # "$this$getPermissionGids_u24lambda_u2424":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionGids$permission$1":I
    .end local v4    # "$this$getPermissionGids_u24lambda_u2424_u24lambda_u2423":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v5    # "$i$a$-with-PermissionService$getPermissionGids$permission$1$1":I
    nop

    .line 350
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v6, :cond_1

    .line 351
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0

    .line 350
    :cond_1
    nop

    .line 349
    nop

    .line 352
    .local v6, "permission":Lcom/android/server/permission/access/permission/Permission;
    invoke-virtual {v6, p2}, Lcom/android/server/permission/access/permission/Permission;->getGidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 13
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 198
    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 199
    .local v0, "permissionGroup":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    move-object v3, v1

    .local v3, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v4, 0x0

    .line 200
    .local v4, "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 201
    .local v5, "callingUid":I
    invoke-direct {p0, v3, v5}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    .line 202
    nop

    .end local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .end local v5    # "callingUid":I
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 205
    .restart local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .restart local v5    # "callingUid":I
    :cond_1
    nop

    .line 206
    :try_start_1
    iget-object v6, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v6, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v7, 0x0

    .line 287
    .local v7, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v8, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "state"

    invoke-static {v9}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v2

    goto :goto_0

    .line 199
    .end local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .end local v5    # "callingUid":I
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v7    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 287
    .restart local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .restart local v5    # "callingUid":I
    .restart local v6    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v7    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :cond_2
    :goto_0
    invoke-direct {v8, v9}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v8, "$this$getPermissionGroupInfo_u24lambda_u247_u24lambda_u246":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 206
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionGroupInfo$1$1":I
    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v10, "$this$getPermissionGroupInfo_u24lambda_u247_u24lambda_u246_u24lambda_u245":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v11, 0x0

    .line 206
    .local v11, "$i$a$-with-PermissionService$getPermissionGroupInfo$1$1$1":I
    invoke-virtual {v10, v8}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v12

    invoke-virtual {v12, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    .end local v8    # "$this$getPermissionGroupInfo_u24lambda_u247_u24lambda_u246":Lcom/android/server/permission/access/GetStateScope;
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionGroupInfo$1$1":I
    .end local v10    # "$this$getPermissionGroupInfo_u24lambda_u247_u24lambda_u246_u24lambda_u245":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v11    # "$i$a$-with-PermissionService$getPermissionGroupInfo$1$1$1":I
    nop

    .line 206
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v7    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v12, :cond_3

    .line 207
    nop

    .end local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .end local v5    # "callingUid":I
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 205
    .restart local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .restart local v5    # "callingUid":I
    :cond_3
    :try_start_2
    iput-object v12, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 209
    iget-object v6, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v5}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    .line 210
    nop

    .end local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .end local v5    # "callingUid":I
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v2

    .line 212
    .restart local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .restart local v5    # "callingUid":I
    :cond_4
    nop

    .end local v3    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$getPermissionGroupInfo$1":I
    .end local v5    # "callingUid":I
    :try_start_3
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 214
    iget-object v1, v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {p0, v1, p2}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionGroupInfo(Landroid/content/pm/PermissionGroupInfo;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    return-object v1

    .line 199
    :goto_1
    nop

    .end local v0    # "permissionGroup":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionGroupName":Ljava/lang/String;
    .end local p2    # "flags":I
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v0    # "permissionGroup":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionGroupName":Ljava/lang/String;
    .restart local p2    # "flags":I
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getPermissionInfo(Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PermissionInfo;
    .locals 16
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 233
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v2, v0

    .line 234
    .local v2, "permission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    const/4 v3, 0x0

    .line 235
    .local v3, "targetSdkVersion":I
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v5

    move-object v0, v5

    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v6, 0x0

    .line 236
    .local v6, "$i$a$-use-PermissionService$getPermissionInfo$1":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 237
    .local v7, "callingUid":I
    invoke-direct {v1, v0, v7}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 238
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    .line 241
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .restart local v7    # "callingUid":I
    :cond_1
    nop

    .line 242
    :try_start_1
    iget-object v8, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v8, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v9, 0x0

    .line 287
    .local v9, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v10, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v8}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "state"

    invoke-static {v11}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v4

    goto :goto_2

    .line 235
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v9    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_0
    move-exception v0

    move-object/from16 v15, p1

    :goto_0
    move/from16 v4, p2

    move-object/from16 v8, p3

    :goto_1
    move v6, v3

    move-object v3, v0

    goto/16 :goto_5

    .line 287
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .restart local v7    # "callingUid":I
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v9    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :cond_2
    :goto_2
    invoke-direct {v10, v11}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v10, "$this$getPermissionInfo_u24lambda_u2411_u24lambda_u2410":Lcom/android/server/permission/access/GetStateScope;
    const/4 v11, 0x0

    .line 242
    .local v11, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionInfo$1$1":I
    iget-object v12, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v12, "$this$getPermissionInfo_u24lambda_u2411_u24lambda_u2410_u24lambda_u249":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v13, 0x0

    .line 242
    .local v13, "$i$a$-with-PermissionService$getPermissionInfo$1$1$1":I
    invoke-virtual {v12, v10}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p1

    :try_start_2
    invoke-virtual {v14, v15}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/permission/access/permission/Permission;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    .end local v10    # "$this$getPermissionInfo_u24lambda_u2411_u24lambda_u2410":Lcom/android/server/permission/access/GetStateScope;
    .end local v11    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionInfo$1$1":I
    .end local v12    # "$this$getPermissionInfo_u24lambda_u2411_u24lambda_u2410_u24lambda_u249":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v13    # "$i$a$-with-PermissionService$getPermissionInfo$1$1$1":I
    nop

    .line 242
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v9    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v14, :cond_3

    .line 243
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    .line 241
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .restart local v7    # "callingUid":I
    :cond_3
    :try_start_3
    iput-object v14, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 245
    iget-object v8, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/permission/access/permission/Permission;

    .local v8, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v9, 0x0

    .line 36
    .local v9, "$i$f$getPackageName":I
    invoke-virtual {v8}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 245
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v9    # "$i$f$getPackageName":I
    invoke-direct {v1, v0, v10, v7}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v8, :cond_4

    .line 246
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v4

    .line 249
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .restart local v7    # "callingUid":I
    :cond_4
    move-object/from16 v8, p3

    :try_start_4
    invoke-direct {v1, v0, v8}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v9

    goto :goto_3

    .line 235
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    :catchall_1
    move-exception v0

    move/from16 v4, p2

    goto :goto_1

    .line 249
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .restart local v7    # "callingUid":I
    :cond_5
    move-object v9, v4

    .line 250
    .local v9, "opPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :goto_3
    nop

    .line 251
    nop

    .line 253
    invoke-direct {v1, v7}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemOrShellUid(I)Z

    move-result v10

    const/16 v11, 0x2710

    if-eqz v10, :cond_6

    goto :goto_4

    .line 254
    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Lcom/android/server/pm/pkg/AndroidPackage;->getTargetSdkVersion()I

    move-result v11

    goto :goto_4

    .line 255
    :cond_7
    nop

    .line 250
    :goto_4
    move v3, v11

    .line 257
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$getPermissionInfo$1":I
    .end local v7    # "callingUid":I
    .end local v9    # "opPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    invoke-static {v5, v4}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 259
    iget-object v0, v2, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/permission/access/permission/Permission;

    move/from16 v4, p2

    invoke-direct {v1, v0, v4, v3}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo(Lcom/android/server/permission/access/permission/Permission;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0

    .line 235
    :catchall_2
    move-exception v0

    goto :goto_0

    .end local v3    # "targetSdkVersion":I
    .local v6, "targetSdkVersion":I
    :goto_5
    nop

    .end local v2    # "permission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .end local v6    # "targetSdkVersion":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionName":Ljava/lang/String;
    .end local p2    # "flags":I
    .end local p3    # "opPackageName":Ljava/lang/String;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .restart local v2    # "permission":Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Ref$ObjectRef;
    .restart local v6    # "targetSdkVersion":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionName":Ljava/lang/String;
    .restart local p2    # "flags":I
    .restart local p3    # "opPackageName":Ljava/lang/String;
    :catchall_3
    move-exception v0

    invoke-static {v5, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPermissionRequestState(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 25
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # I
    .param p4, "persistentDeviceId"    # Ljava/lang/String;

    .line 473
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move/from16 v7, p3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 474
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 475
    .local v9, "uid":I
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDeviceId()I

    move-result v0

    if-ne v7, v0, :cond_0

    .line 476
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->createDeviceContext(I)Landroid/content/Context;

    move-result-object v0

    .line 475
    :goto_0
    move-object v10, v0

    .line 480
    .local v10, "deviceContext":Landroid/content/Context;
    invoke-virtual {v10, v5, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v11

    .line 481
    .local v11, "result":I
    const/4 v0, 0x0

    if-nez v11, :cond_1

    .line 482
    return v0

    .line 485
    :cond_1
    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 486
    .local v3, "appId":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 488
    .local v4, "userId":I
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v12, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v2, "packageManagerLocal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v12

    :cond_2
    invoke-direct {v1, v2, v9, v4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    move-object v6, v2

    .local v6, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v13, 0x0

    .line 489
    .local v13, "$i$a$-use-PermissionService$getPermissionRequestState$packageState$1":I
    move-object/from16 v14, p1

    :try_start_0
    invoke-interface {v6, v14}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    .end local v6    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v13    # "$i$a$-use-PermissionService$getPermissionRequestState$packageState$1":I
    invoke-static {v2, v12}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v13, 0x2

    if-nez v15, :cond_3

    .line 490
    return v13

    .line 488
    :cond_3
    nop

    .line 487
    nop

    .line 492
    .local v15, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_4

    return v13

    .line 491
    :cond_4
    move-object/from16 v16, v2

    .line 493
    .local v16, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    if-eq v3, v2, :cond_5

    .line 494
    return v13

    .line 496
    :cond_5
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v6, 0x0

    .line 287
    .local v6, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v0, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v18

    const-string/jumbo v19, "state"

    if-nez v18, :cond_6

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object/from16 v12, v18

    :goto_1
    invoke-direct {v0, v12}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v0, "$this$getPermissionRequestState_u24lambda_u2443":Lcom/android/server/permission/access/GetStateScope;
    const/4 v12, 0x0

    .line 496
    .local v12, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$permission$1":I
    move/from16 v18, v13

    iget-object v13, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v13, "$this$getPermissionRequestState_u24lambda_u2443_u24lambda_u2442":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v21, 0x0

    .line 496
    .local v21, "$i$a$-with-PermissionService$getPermissionRequestState$permission$1$1":I
    move-object/from16 v22, v2

    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v22, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    invoke-virtual {v13, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v0    # "$this$getPermissionRequestState_u24lambda_u2443":Lcom/android/server/permission/access/GetStateScope;
    .end local v12    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$permission$1":I
    .end local v13    # "$this$getPermissionRequestState_u24lambda_u2443_u24lambda_u2442":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v21    # "$i$a$-with-PermissionService$getPermissionRequestState$permission$1$1":I
    nop

    .line 496
    .end local v6    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v22    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    move-object v0, v2

    .line 497
    .local v0, "permission":Lcom/android/server/permission/access/permission/Permission;
    if-eqz v0, :cond_8

    move-object v2, v0

    .local v2, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v6, 0x0

    .line 57
    .local v6, "$i$f$isRuntime":I
    move-object v12, v2

    .local v12, "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v13, 0x0

    .line 48
    .local v13, "$i$f$getProtection":I
    invoke-virtual {v12}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v12

    .line 57
    .end local v12    # "this_$iv$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v13    # "$i$f$getProtection":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    move v2, v13

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    .line 497
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v6    # "$i$f$isRuntime":I
    :goto_2
    if-nez v2, :cond_9

    :cond_8
    goto/16 :goto_8

    .line 500
    :cond_9
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 501
    return v18

    .line 505
    :cond_a
    iget-object v12, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v12, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/16 v21, 0x0

    .line 287
    .local v21, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v12}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_b
    invoke-direct {v2, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$getPermissionRequestState_u24lambda_u2444":Lcom/android/server/permission/access/GetStateScope;
    const/16 v22, 0x0

    .line 506
    .local v22, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$permissionFlags$1":I
    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 287
    move/from16 v24, v4

    move v4, v3

    move-object v3, v5

    move/from16 v5, v24

    .line 505
    .end local v2    # "$this$getPermissionRequestState_u24lambda_u2444":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "appId":I
    .end local v12    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v21    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v22    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$permissionFlags$1":I
    .local v4, "appId":I
    .local v5, "userId":I
    nop

    .line 504
    move v12, v2

    .line 508
    .local v12, "permissionFlags":I
    const v2, 0x401c0

    invoke-static {v12, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v21

    .line 510
    .local v21, "isUnreqestable":Z
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 511
    const-string v2, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    move v4, v5

    move/from16 v19, v13

    goto :goto_6

    :cond_d
    :goto_3
    if-eqz v21, :cond_10

    .line 513
    nop

    .line 514
    nop

    .line 515
    nop

    .line 516
    nop

    .line 513
    const-string v2, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    invoke-virtual {v10, v2, v8, v9}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_e

    move/from16 v17, v13

    goto :goto_4

    :cond_e
    const/16 v17, 0x0

    .line 512
    :goto_4
    nop

    .line 519
    .local v17, "isUserSelectedGranted":Z
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/16 v22, 0x0

    .line 287
    .local v22, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v6, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v23

    if-nez v23, :cond_f

    invoke-static/range {v19 .. v19}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move/from16 v19, v13

    const/4 v13, 0x0

    goto :goto_5

    :cond_f
    move/from16 v19, v13

    move-object/from16 v13, v23

    :goto_5
    invoke-direct {v6, v13}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v6, "$this$getPermissionRequestState_u24lambda_u2445":Lcom/android/server/permission/access/GetStateScope;
    const/4 v13, 0x0

    .line 520
    .local v13, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$userSelectedPermissionFlags$1":I
    nop

    .line 521
    nop

    .line 522
    nop

    .line 523
    nop

    .line 524
    nop

    .line 520
    move v3, v4

    move v4, v5

    .end local v5    # "userId":I
    .restart local v3    # "appId":I
    .local v4, "userId":I
    const-string v5, "android.permission.READ_MEDIA_VISUAL_USER_SELECTED"

    move-object/from16 v20, v2

    move-object v2, v6

    move-object/from16 v6, p4

    .end local v6    # "$this$getPermissionRequestState_u24lambda_u2445":Lcom/android/server/permission/access/GetStateScope;
    .local v2, "$this$getPermissionRequestState_u24lambda_u2445":Lcom/android/server/permission/access/GetStateScope;
    .local v20, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 525
    nop

    .line 287
    .end local v2    # "$this$getPermissionRequestState_u24lambda_u2445":Lcom/android/server/permission/access/GetStateScope;
    .end local v13    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionRequestState$userSelectedPermissionFlags$1":I
    nop

    .line 519
    .end local v20    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v22    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 518
    nop

    .line 527
    .local v5, "userSelectedPermissionFlags":I
    nop

    .line 528
    if-eqz v17, :cond_11

    .line 529
    const/16 v1, 0x40

    invoke-static {v5, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 531
    return v19

    .line 511
    .end local v3    # "appId":I
    .end local v17    # "isUserSelectedGranted":Z
    .local v4, "appId":I
    .local v5, "userId":I
    :cond_10
    move v3, v4

    move v4, v5

    move/from16 v19, v13

    .line 534
    .end local v5    # "userId":I
    .restart local v3    # "appId":I
    .local v4, "userId":I
    :cond_11
    :goto_6
    if-eqz v21, :cond_12

    .line 535
    move/from16 v13, v18

    goto :goto_7

    .line 537
    :cond_12
    move/from16 v13, v19

    .line 534
    :goto_7
    return v13

    .line 498
    .end local v12    # "permissionFlags":I
    .end local v21    # "isUnreqestable":Z
    :goto_8
    return v18

    .line 488
    .end local v0    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v15    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v16    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local v3    # "appId":I
    .end local v4    # "userId":I
    .end local v8    # "pid":I
    .end local v9    # "uid":I
    .end local v10    # "deviceContext":Landroid/content/Context;
    .end local v11    # "result":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":I
    .end local p4    # "persistentDeviceId":Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v3    # "appId":I
    .restart local v4    # "userId":I
    .restart local v8    # "pid":I
    .restart local v9    # "uid":I
    .restart local v10    # "deviceContext":Landroid/content/Context;
    .restart local v11    # "result":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":I
    .restart local p4    # "persistentDeviceId":Ljava/lang/String;
    :catchall_1
    move-exception v0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .locals 8
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 2290
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v4

    :cond_0
    invoke-direct {v2, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$getPermissionTEMP_u24lambda_u24175":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 2290
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionTEMP$permission$1":I
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$getPermissionTEMP_u24lambda_u24175_u24lambda_u24174":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v6, 0x0

    .line 2290
    .local v6, "$i$a$-with-PermissionService$getPermissionTEMP$permission$1$1":I
    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/permission/access/permission/Permission;

    .line 287
    .end local v2    # "$this$getPermissionTEMP_u24lambda_u24175":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$getPermissionTEMP$permission$1":I
    .end local v5    # "$this$getPermissionTEMP_u24lambda_u24175_u24lambda_u24174":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v6    # "$i$a$-with-PermissionService$getPermissionTEMP$permission$1$1":I
    nop

    .line 2290
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v7, :cond_1

    return-object v4

    .line 2289
    :cond_1
    nop

    .line 2292
    .local v7, "permission":Lcom/android/server/permission/access/permission/Permission;
    new-instance v0, Lcom/android/server/pm/permission/Permission;

    .line 2293
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    .line 2294
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v2

    .line 2295
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->isReconciled()Z

    move-result v3

    .line 2296
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getAppId()I

    move-result v4

    .line 2297
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getGids()[I

    move-result-object v5

    .line 2298
    invoke-virtual {v7}, Lcom/android/server/permission/access/permission/Permission;->getAreGidsPerUser()Z

    move-result v6

    .line 2292
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;IZI[IZ)V

    return-object v0
.end method

.method public getSplitPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/SplitPermissionInfoParcelable;",
            ">;"
        }
    .end annotation

    .line 1988
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_0

    const-string/jumbo v0, "systemConfig"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 1987
    invoke-static {v0}, Landroid/permission/PermissionManager;->splitPermissionInfoListToParcelableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 750
    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 751
    return-void
.end method

.method public final initialize()V
    .locals 4

    .line 149
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->metricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 150
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 151
    nop

    .line 152
    const-class v0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {v0}, Lcom/android/server/LocalManagerRegistry;->getManagerOrThrow(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerLocal;

    .line 151
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    .line 153
    nop

    .line 155
    const-string/jumbo v0, "platform_compat"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 154
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    .line 153
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 157
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->systemConfig:Lcom/android/server/SystemConfig;

    .line 158
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 159
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    .line 163
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    .line 164
    invoke-static {}, Landroid/permission/PermissionManager;->disablePackageNamePermissionCache()V

    .line 166
    nop

    .line 167
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 2940
    move-object v1, v0

    .local v1, "$this$initialize_u24lambda_u240":Lcom/android/server/ServiceThread;
    const/4 v2, 0x0

    .line 167
    .local v2, "$i$a$-apply-PermissionService$initialize$1":I
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 166
    .end local v1    # "$this$initialize_u24lambda_u240":Lcom/android/server/ServiceThread;
    .end local v2    # "$i$a$-apply-PermissionService$initialize$1":I
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    .line 168
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->handlerThread:Landroid/os/HandlerThread;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "handlerThread"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->handler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    .line 170
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 171
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    const-string/jumbo v3, "onPermissionFlagsChangedListener"

    if-nez v1, :cond_1

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/AppIdPermissionPolicy$OnPermissionFlagsChangedListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->devicePolicy:Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionFlagsChangedListener:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    if-nez v1, :cond_2

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->addOnPermissionFlagsChangedListener(Lcom/android/server/permission/access/permission/DevicePermissionPolicy$OnDevicePermissionFlagsChangedListener;)V

    .line 173
    return-void
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1225
    move/from16 v4, p4

    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    .line 1226
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPermissionRevokedByPolicy: Unknown user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return v7

    .line 1230
    :cond_1
    nop

    .line 1231
    nop

    .line 1232
    nop

    .line 1233
    nop

    .line 1234
    nop

    .line 1230
    const/4 v0, 0x1

    const-string/jumbo v2, "isPermissionRevokedByPolicy"

    invoke-direct {p0, v4, v0, v7, v2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v0, v2, v4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    move-object v0, v2

    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v3, 0x0

    .line 1239
    .local v3, "$i$a$-use-PermissionService$isPermissionRevokedByPolicy$packageState$1":I
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v3    # "$i$a$-use-PermissionService$isPermissionRevokedByPolicy$packageState$1":I
    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3

    .line 1240
    return v7

    .line 1238
    :cond_3
    nop

    .line 1237
    move-object v3, v5

    .line 1242
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v8, 0x0

    .line 287
    .local v8, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, v5

    :goto_0
    invoke-direct {v2, v1}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$isPermissionRevokedByPolicy_u24lambda_u2478":Lcom/android/server/permission/access/GetStateScope;
    const/4 v9, 0x0

    .line 1243
    .local v9, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$isPermissionRevokedByPolicy$1":I
    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    move-object v11, v3

    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v11, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-eqz v10, :cond_5

    .line 1244
    return v7

    .line 1248
    :cond_5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    move/from16 v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1247
    nop

    .line 1250
    .local v3, "flags":I
    const/16 v1, 0x80

    invoke-static {v3, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v1

    return v1

    .line 1238
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v2    # "$this$isPermissionRevokedByPolicy_u24lambda_u2478":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "flags":I
    .end local v8    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v9    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$isPermissionRevokedByPolicy$1":I
    .end local v11    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :catchall_0
    move-exception v0

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1255
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-eqz v2, :cond_6

    .line 1260
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v4

    move-object v0, v4

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v5, 0x0

    .line 1260
    .local v5, "$i$a$-use-PermissionService$isPermissionsReviewRequired$packageState$1":I
    :try_start_0
    invoke-direct {v1, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->getPackageState(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$isPermissionsReviewRequired$packageState$1":I
    invoke-static {v4, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    if-nez v6, :cond_1

    .line 1261
    return v0

    .line 1260
    :cond_1
    nop

    .line 1259
    nop

    .line 1264
    .local v6, "packageState":Lcom/android/server/pm/pkg/PackageState;
    iget-object v4, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v4, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v5, 0x0

    .line 287
    .local v5, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v7, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v4}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "state"

    invoke-static {v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v3, v8

    :goto_0
    invoke-direct {v7, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v7, "$this$isPermissionsReviewRequired_u24lambda_u2482":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 1264
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$isPermissionsReviewRequired$permissionFlags$1":I
    iget-object v8, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v8, "$this$isPermissionsReviewRequired_u24lambda_u2482_u24lambda_u2481":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v9, 0x0

    .line 1264
    .local v9, "$i$a$-with-PermissionService$isPermissionsReviewRequired$permissionFlags$1$1":I
    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v10

    move/from16 v11, p2

    invoke-virtual {v8, v7, v10, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getUidPermissionFlags(Lcom/android/server/permission/access/GetStateScope;II)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v8

    .line 287
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$isPermissionsReviewRequired$permissionFlags$1":I
    .end local v7    # "$this$isPermissionsReviewRequired_u24lambda_u2482":Lcom/android/server/permission/access/GetStateScope;
    .end local v8    # "$this$isPermissionsReviewRequired_u24lambda_u2482_u24lambda_u2481":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$i$a$-with-PermissionService$isPermissionsReviewRequired$permissionFlags$1$1":I
    nop

    .line 1264
    .end local v4    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    if-nez v8, :cond_3

    .line 1265
    return v0

    .line 1264
    :cond_3
    nop

    .line 1263
    nop

    .line 1266
    .local v8, "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object v3, v8

    .local v3, "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v4, 0x0

    .line 29
    .local v4, "$i$f$anyIndexed":I
    move-object v5, v3

    .local v5, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v7, 0x0

    .line 47
    .local v7, "$i$f$forEachIndexed":I
    const/4 v9, 0x0

    .local v9, "index$iv$iv":I
    invoke-virtual {v5}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v10

    :goto_1
    if-ge v9, v10, :cond_5

    .line 48
    invoke-virtual {v5, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "key$iv":Ljava/lang/Object;
    invoke-virtual {v5, v9}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    .local v13, "value$iv":Ljava/lang/Object;
    move v14, v9

    .local v14, "index$iv":I
    const/4 v15, 0x0

    .line 30
    .local v15, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$anyIndexed$1$iv":I
    move-object/from16 v16, v13

    check-cast v16, Ljava/lang/Number;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v0

    .local v0, "it":I
    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    const/16 v16, 0x0

    .line 1266
    .local v16, "$i$a$-anyIndexed-PermissionService$isPermissionsReviewRequired$2":I
    const/16 v1, 0x1400

    invoke-static {v0, v1}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    .line 30
    .end local v0    # "it":I
    .end local v16    # "$i$a$-anyIndexed-PermissionService$isPermissionsReviewRequired$2":I
    if-eqz v0, :cond_4

    .line 31
    const/4 v0, 0x1

    goto :goto_2

    .line 33
    :cond_4
    nop

    .line 48
    .end local v12    # "key$iv":Ljava/lang/Object;
    .end local v13    # "value$iv":Ljava/lang/Object;
    .end local v14    # "index$iv":I
    .end local v15    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$anyIndexed$1$iv":I
    nop

    .line 47
    add-int/lit8 v9, v9, 0x1

    const/4 v0, 0x0

    move-object/from16 v1, p0

    goto :goto_1

    :cond_5
    nop

    .line 50
    .end local v9    # "index$iv$iv":I
    nop

    .line 34
    .end local v5    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v7    # "$i$f$forEachIndexed":I
    const/4 v0, 0x0

    .line 1266
    .end local v3    # "$this$anyIndexed$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v4    # "$i$f$anyIndexed":I
    :goto_2
    return v0

    .line 1260
    .end local v6    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v8    # "permissionFlags":Lcom/android/server/permission/access/immutable/IndexedMap;
    :catchall_0
    move-exception v0

    move/from16 v11, p2

    move-object v1, v0

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userId":I
    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    .line 2940
    :cond_6
    move/from16 v11, p2

    const/4 v0, 0x0

    .line 1255
    .local v0, "$i$a$-requireNotNull-PermissionService$isPermissionsReviewRequired$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-PermissionService$isPermissionsReviewRequired$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName cannot be null"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPackageAdded(Lcom/android/server/pm/pkg/PackageState;ZLcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 8
    .param p1, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p2, "isInstantApp"    # Z
    .param p3, "oldPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2418
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    return-void

    .line 2422
    :cond_0
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2427
    .local v1, "$i$a$-synchronized-PermissionService$onPackageAdded$1":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    .local v2, "$this$getOrPut$iv":Landroid/util/ArrayMap;
    .local v3, "key$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 52
    .local v4, "$i$f$getOrPut":I
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 53
    .local v6, "$i$a$-let-ArrayMapExtensionsKt$getOrPut$1$iv":I
    goto :goto_0

    .line 55
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v6    # "$i$a$-let-ArrayMapExtensionsKt$getOrPut$1$iv":I
    :cond_1
    const/4 v5, 0x0

    .line 2427
    .local v5, "$i$a$-getOrPut-PermissionService$onPackageAdded$1$1":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .end local v5    # "$i$a$-getOrPut-PermissionService$onPackageAdded$1$1":I
    move-object v5, v6

    .line 3424
    .local v5, "it$iv":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 55
    .local v7, "$i$a$-also-ArrayMapExtensionsKt$getOrPut$2$iv":I
    invoke-virtual {v2, v3, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v6

    .end local v2    # "$this$getOrPut$iv":Landroid/util/ArrayMap;
    .end local v3    # "key$iv":Ljava/lang/Object;
    .end local v4    # "$i$f$getOrPut":I
    .end local v5    # "it$iv":Ljava/lang/Object;
    .end local v7    # "$i$a$-also-ArrayMapExtensionsKt$getOrPut$2$iv":I
    :goto_0
    check-cast v5, Ljava/util/Collection;

    .line 2428
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2427
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2429
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 2431
    nop

    .end local v1    # "$i$a$-synchronized-PermissionService$onPackageAdded$1":I
    monitor-exit v0

    return-void

    .line 2433
    .restart local v1    # "$i$a$-synchronized-PermissionService$onPackageAdded$1":I
    :cond_2
    nop

    .end local v1    # "$i$a$-synchronized-PermissionService$onPackageAdded$1":I
    :try_start_1
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    monitor-exit v0

    .line 2434
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;)V

    .line 2435
    return-void

    .line 2422
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onPackageInstalled(Lcom/android/server/pm/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .locals 16
    .param p1, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "previousAppId"    # I
    .param p3, "params"    # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;
    .param p4, "userId"    # I

    .line 2448
    move-object/from16 v1, p0

    move/from16 v2, p4

    const/4 v0, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isApex()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2449
    return-void

    .line 2452
    :cond_0
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->DEFAULT:Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;

    move-object/from16 v4, p3

    if-ne v4, v3, :cond_1

    .line 2461
    return-void

    .line 2464
    :cond_1
    iget-object v3, v1, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v5, 0x0

    .line 2465
    .local v5, "$i$a$-synchronized-PermissionService$onPackageInstalled$1":I
    :try_start_0
    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_2

    .line 2469
    nop

    .end local v5    # "$i$a$-synchronized-PermissionService$onPackageInstalled$1":I
    monitor-exit v3

    return-void

    .line 2471
    .restart local v5    # "$i$a$-synchronized-PermissionService$onPackageInstalled$1":I
    :cond_2
    nop

    .end local v5    # "$i$a$-synchronized-PermissionService$onPackageInstalled$1":I
    :try_start_1
    sget-object v5, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2464
    monitor-exit v3

    .line 2473
    const/4 v3, -0x1

    const/4 v6, 0x0

    if-ne v2, v3, :cond_4

    .line 2474
    iget-object v3, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez v3, :cond_3

    const-string/jumbo v3, "userManagerService"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v3

    goto :goto_0

    .line 2476
    :cond_4
    new-array v3, v0, [I

    aput v2, v3, v6

    .line 2473
    :goto_0
    nop

    .line 2472
    nop

    .line 2479
    .local v3, "userIds":[I
    move-object v7, v3

    .local v7, "$this$forEach$iv":[I
    const/4 v8, 0x0

    .line 3425
    .local v8, "$i$f$forEach":I
    array-length v9, v7

    move v10, v6

    :goto_1
    if-ge v10, v9, :cond_5

    aget v11, v7, v10

    .local v11, "element$iv":I
    move v12, v11

    .local v12, "userId":I
    const/4 v13, 0x0

    .line 2479
    .local v13, "$i$a$-forEach-PermissionService$onPackageInstalled$2":I
    iget-object v14, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v12}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageInstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    .line 3425
    .end local v12    # "userId":I
    .end local v13    # "$i$a$-forEach-PermissionService$onPackageInstalled$2":I
    nop

    .end local v11    # "element$iv":I
    add-int/2addr v10, v0

    goto :goto_1

    .line 3426
    :cond_5
    nop

    .line 2482
    .end local v7    # "$this$forEach$iv":[I
    .end local v8    # "$i$f$forEach":I
    move-object v7, v3

    .restart local v7    # "$this$forEach$iv":[I
    const/4 v8, 0x0

    .line 3427
    .restart local v8    # "$i$f$forEach":I
    array-length v9, v7

    :goto_2
    if-ge v6, v9, :cond_7

    aget v10, v7, v6

    .local v10, "element$iv":I
    move v11, v10

    .local v11, "userId":I
    const/4 v12, 0x0

    .line 2485
    .local v12, "$i$a$-forEach-PermissionService$onPackageInstalled$3":I
    iget-object v13, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v13, :cond_6

    const-string/jumbo v13, "packageManagerInternal"

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v13, 0x0

    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2484
    nop

    .line 2486
    .local v13, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .line 2487
    nop

    .line 2488
    invoke-interface {v13}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v14

    .line 2489
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAllowlistedRestrictedPermissions()Ljava/util/List;

    move-result-object v15

    .line 2490
    nop

    .line 2486
    move-object/from16 v5, p1

    invoke-direct {v1, v5, v14, v15, v11}, Lcom/android/server/permission/access/permission/PermissionService;->addAllowlistedRestrictedPermissionsUnchecked(Lcom/android/server/pm/pkg/AndroidPackage;ILjava/util/List;I)V

    .line 2492
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object v14

    invoke-direct {v1, v13, v11, v14}, Lcom/android/server/permission/access/permission/PermissionService;->setRequestedPermissionStates(Lcom/android/server/pm/pkg/PackageState;ILandroid/util/ArrayMap;)V

    .line 2493
    nop

    .line 3427
    .end local v11    # "userId":I
    .end local v12    # "$i$a$-forEach-PermissionService$onPackageInstalled$3":I
    .end local v13    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    nop

    .end local v10    # "element$iv":I
    add-int/2addr v6, v0

    goto :goto_2

    .line 3428
    :cond_7
    move-object/from16 v5, p1

    .line 2494
    .end local v7    # "$this$forEach$iv":[I
    .end local v8    # "$i$f$forEach":I
    return-void

    .line 2464
    .end local v3    # "userIds":[I
    :catchall_0
    move-exception v0

    move-object/from16 v5, p1

    monitor-exit v3

    throw v0
.end method

.method public onPackageRemoved(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0
    .param p1, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;

    .line 2440
    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/pkg/PackageState;Lcom/android/server/pm/pkg/AndroidPackage;Ljava/util/List;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "packageState"    # Lcom/android/server/pm/pkg/PackageState;
    .param p4, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p5, "sharedUserPkgs"    # Ljava/util/List;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/pkg/PackageState;",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 2504
    move/from16 v0, p6

    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2505
    return-void

    .line 2509
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 2510
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->userManagerService:Lcom/android/server/pm/UserManagerService;

    if-nez v1, :cond_1

    const-string/jumbo v1, "userManagerService"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIdsIncludingPreCreated()[I

    move-result-object v1

    goto :goto_0

    .line 2512
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v2

    .line 2509
    :goto_0
    nop

    .line 2508
    nop

    .line 2514
    .local v1, "userIds":[I
    move-object v4, v1

    .local v4, "$this$forEach$iv":[I
    const/4 v5, 0x0

    .line 3429
    .local v5, "$i$f$forEach":I
    array-length v6, v4

    :goto_1
    if-ge v2, v6, :cond_3

    aget v7, v4, v2

    .local v7, "element$iv":I
    move v8, v7

    .local v8, "it":I
    const/4 v9, 0x0

    .line 2514
    .local v9, "$i$a$-forEach-PermissionService$onPackageUninstalled$1":I
    iget-object v10, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v10, p1, p2, v8}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageUninstalled$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;II)V

    .line 3429
    .end local v8    # "it":I
    .end local v9    # "$i$a$-forEach-PermissionService$onPackageUninstalled$1":I
    nop

    .end local v7    # "element$iv":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3430
    :cond_3
    nop

    .line 2515
    .end local v4    # "$this$forEach$iv":[I
    .end local v5    # "$i$f$forEach":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_4

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v3, v2

    :goto_2
    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 2516
    .local v2, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v2, :cond_5

    .line 2517
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onPackageRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;I)V

    .line 2519
    :cond_5
    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "fingerprintChanged"    # Z

    .line 2401
    const/4 v0, 0x0

    .line 2402
    .local v0, "packageNames":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumeLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 2405
    .local v2, "$i$a$-synchronized-PermissionService$onStorageVolumeMounted$1":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->storageVolumePackageNames:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 2402
    .end local v2    # "$i$a$-synchronized-PermissionService$onStorageVolumeMounted$1":I
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 2405
    .restart local v2    # "$i$a$-synchronized-PermissionService$onStorageVolumeMounted$1":I
    :cond_0
    :goto_0
    move-object v0, v3

    .line 2406
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->mountedStorageVolumes:Landroid/util/ArraySet;

    .local v3, "$this$plusAssign$iv":Landroid/util/ArraySet;
    const/4 v4, 0x0

    .line 72
    .local v4, "$i$f$plusAssign":I
    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 73
    nop

    .line 2407
    .end local v3    # "$this$plusAssign$iv":Landroid/util/ArraySet;
    .end local v4    # "$i$f$plusAssign":I
    nop

    .end local v2    # "$i$a$-synchronized-PermissionService$onStorageVolumeMounted$1":I
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2402
    monitor-exit v1

    .line 2408
    move-object v1, p0

    .local v1, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v2, 0x0

    .line 2522
    .local v2, "$i$f$withCorkedPackageInfoCache":I
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2523
    nop

    .line 2524
    const/4 v3, 0x0

    .line 2409
    .local v3, "$i$a$-withCorkedPackageInfoCache-PermissionService$onStorageVolumeMounted$2":I
    :try_start_1
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v4, p1, v0, p2}, Lcom/android/server/permission/access/AccessCheckingService;->onStorageVolumeMounted$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(Ljava/lang/String;Ljava/util/List;Z)V

    .line 2410
    nop

    .end local v3    # "$i$a$-withCorkedPackageInfoCache-PermissionService$onStorageVolumeMounted$2":I
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2524
    nop

    .line 2526
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 2524
    nop

    .line 2411
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v2    # "$i$f$withCorkedPackageInfoCache":I
    return-void

    .line 2526
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v2    # "$i$f$withCorkedPackageInfoCache":I
    :catchall_1
    move-exception v3

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw v3

    .line 2402
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v2    # "$i$f$withCorkedPackageInfoCache":I
    :goto_1
    monitor-exit v1

    throw v2
.end method

.method public onSystemReady()V
    .locals 12

    .line 2375
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->onSystemReady$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()V

    .line 2377
    nop

    .line 2378
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2377
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 2379
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->getAllPersistentDeviceIds()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1

    .local v0, "persistentDeviceIds":Ljava/util/Set;
    const/4 v1, 0x0

    .line 2380
    .local v1, "$i$a$-let-PermissionService$onSystemReady$1":I
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    .line 294
    .local v5, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "state"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0

    .line 293
    .end local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v5

    goto :goto_1

    .line 294
    .restart local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_0
    :goto_0
    nop

    .line 295
    .local v6, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v7

    .line 296
    .local v7, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v8, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v8, v6, v7}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v8, "$this$onSystemReady_u24lambda_u24192_u24lambda_u24191":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v9, 0x0

    .line 2381
    .local v9, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$onSystemReady$1$1":I
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v10

    .line 2940
    .local v10, "$this$onSystemReady_u24lambda_u24192_u24lambda_u24191_u24lambda_u24190":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 v11, 0x0

    .line 2381
    .local v11, "$i$a$-with-PermissionService$onSystemReady$1$1$1":I
    invoke-virtual {v10, v8, v0}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->trimDevicePermissionStates(Lcom/android/server/permission/access/MutateStateScope;Ljava/util/Set;)V

    .line 2382
    .end local v10    # "$this$onSystemReady_u24lambda_u24192_u24lambda_u24191_u24lambda_u24190":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .end local v11    # "$i$a$-with-PermissionService$onSystemReady$1$1$1":I
    nop

    .line 296
    .end local v8    # "$this$onSystemReady_u24lambda_u24192_u24lambda_u24191":Lcom/android/server/permission/access/MutateStateScope;
    .end local v9    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$onSystemReady$1$1":I
    nop

    .line 297
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v2, v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v8

    .line 3405
    .local v8, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v9, 0x0

    .line 299
    .local v9, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v10, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v10, v7}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v8, v10}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v8    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v9    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v6    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v7    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    sget-object v5, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v4

    .line 301
    nop

    .line 2383
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 2379
    .end local v0    # "persistentDeviceIds":Ljava/util/Set;
    .end local v1    # "$i$a$-let-PermissionService$onSystemReady$1":I
    :cond_1
    goto :goto_2

    .line 293
    .restart local v0    # "persistentDeviceIds":Ljava/util/Set;
    .restart local v1    # "$i$a$-let-PermissionService$onSystemReady$1":I
    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_1
    monitor-exit v4

    throw v5

    .line 2384
    .end local v0    # "persistentDeviceIds":Ljava/util/Set;
    .end local v1    # "$i$a$-let-PermissionService$onSystemReady$1":I
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->virtualDeviceManagerInternal:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;

    invoke-direct {v1, p0}, Lcom/android/server/permission/access/permission/PermissionService$onSystemReady$2;-><init>(Lcom/android/server/permission/access/permission/PermissionService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;->registerPersistentDeviceIdRemovedListener(Ljava/util/function/Consumer;)V

    .line 2388
    :cond_2
    nop

    .line 2389
    new-instance v0, Landroid/permission/PermissionControllerManager;

    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 2388
    iput-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2390
    return-void
.end method

.method public onUserCreated(I)V
    .locals 4
    .param p1, "userId"    # I

    .line 2393
    move-object v0, p0

    .local v0, "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    const/4 v1, 0x0

    .line 2522
    .local v1, "$i$f$withCorkedPackageInfoCache":I
    invoke-static {}, Landroid/content/pm/PackageManager;->corkPackageInfoCache()V

    .line 2523
    nop

    .line 2524
    const/4 v2, 0x0

    .line 2393
    .local v2, "$i$a$-withCorkedPackageInfoCache-PermissionService$onUserCreated$1":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v3, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserAdded$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    .end local v2    # "$i$a$-withCorkedPackageInfoCache-PermissionService$onUserCreated$1":I
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2524
    nop

    .line 2526
    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    .line 2524
    nop

    .line 2394
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .end local v1    # "$i$f$withCorkedPackageInfoCache":I
    return-void

    .line 2526
    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local v1    # "$i$f$withCorkedPackageInfoCache":I
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/content/pm/PackageManager;->uncorkPackageInfoCache()V

    throw v2
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 2397
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/AccessCheckingService;->onUserRemoved$frameworks__base__services__permission__android_common__services_permission_pre_jarjar(I)V

    .line 2398
    return-void
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 24
    .param p1, "permissionGroupName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 288
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v9

    move-object v0, v9

    .local v0, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v10, 0x0

    .line 289
    .local v10, "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move v11, v2

    .line 290
    .local v11, "callingUid":I
    invoke-direct {v1, v0, v11}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 291
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .end local v11    # "callingUid":I
    invoke-static {v9, v8}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v8

    .line 295
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .restart local v11    # "callingUid":I
    :cond_1
    :try_start_1
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 287
    .local v3, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v4, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v8

    goto :goto_0

    .line 311
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .end local v11    # "callingUid":I
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_4

    .line 287
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .restart local v11    # "callingUid":I
    :cond_2
    :goto_0
    invoke-direct {v4, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v4, "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    const/4 v5, 0x0

    .line 296
    .local v5, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    if-eqz v7, :cond_4

    .line 298
    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v6, "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415_u24lambda_u2413":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v12, 0x0

    .line 298
    .local v12, "$i$a$-with-PermissionService$queryPermissionsByGroup$1$permissions$1$permissionGroup$1":I
    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionGroups(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/PermissionGroupInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v6    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415_u24lambda_u2413":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v12    # "$i$a$-with-PermissionService$queryPermissionsByGroup$1$permissions$1$permissionGroup$1":I
    if-nez v13, :cond_3

    .line 299
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v4    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    .end local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .end local v11    # "callingUid":I
    invoke-static {v9, v8}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v8

    .line 298
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v4    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    .restart local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    .restart local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .restart local v11    # "callingUid":I
    :cond_3
    nop

    .line 297
    nop

    .line 301
    .local v13, "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    nop

    .line 302
    :try_start_2
    iget-object v6, v13, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v6, v11}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    .line 304
    nop

    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local v4    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    .end local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .end local v11    # "callingUid":I
    .end local v13    # "permissionGroup":Landroid/content/pm/PermissionGroupInfo;
    invoke-static {v9, v8}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v8

    .line 308
    .restart local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v4    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    .restart local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    .restart local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .restart local v11    # "callingUid":I
    :cond_4
    :try_start_3
    iget-object v6, v1, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v6, "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415_u24lambda_u2414":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v12, 0x0

    .line 308
    .local v12, "$i$a$-with-PermissionService$queryPermissionsByGroup$1$permissions$1$1":I
    invoke-virtual {v6, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v13

    .line 287
    .end local v4    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415":Lcom/android/server/permission/access/GetStateScope;
    .end local v5    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$queryPermissionsByGroup$1$permissions$1":I
    .end local v6    # "$this$queryPermissionsByGroup_u24lambda_u2417_u24lambda_u2415_u24lambda_u2414":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v12    # "$i$a$-with-PermissionService$queryPermissionsByGroup$1$permissions$1$1":I
    nop

    .line 295
    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .line 294
    nop

    .line 311
    .local v13, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "destination$iv":Ljava/util/Collection;
    move-object v12, v13

    .local v12, "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    move-object v14, v2

    .end local v2    # "destination$iv":Ljava/util/Collection;
    .local v14, "destination$iv":Ljava/util/Collection;
    const/4 v15, 0x0

    .line 88
    .local v15, "$i$f$mapNotNullIndexedTo":I
    move-object v2, v12

    .local v2, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/16 v16, 0x0

    .line 47
    .local v16, "$i$f$forEachIndexed":I
    const/4 v3, 0x0

    .local v3, "index$iv$iv":I
    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_8

    .line 48
    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move/from16 v17, v3

    .local v17, "index$iv":I
    move-object/from16 v18, v6

    .local v18, "value$iv":Ljava/lang/Object;
    move-object/from16 v19, v5

    .local v19, "key$iv":Ljava/lang/Object;
    const/16 v20, 0x0

    .line 88
    .local v20, "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    move-object/from16 v5, v18

    check-cast v5, Lcom/android/server/permission/access/permission/Permission;

    move-object/from16 v6, v19

    check-cast v6, Ljava/lang/String;

    .local v5, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/16 v21, 0x0

    .line 312
    .local v21, "$i$a$-mapNotNullIndexedTo-PermissionService$queryPermissionsByGroup$1$1":I
    nop

    .line 313
    move-object v6, v5

    .local v6, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/16 v22, 0x0

    .line 39
    .local v22, "$i$f$getGroupName":I
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 313
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v22    # "$i$f$getGroupName":I
    invoke-static {v8, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 314
    move-object v6, v5

    .restart local v6    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v8, 0x0

    .line 36
    .local v8, "$i$f$getPackageName":I
    move-object/from16 v22, v2

    .end local v2    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v22, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-virtual {v6}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 314
    .end local v6    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v8    # "$i$f$getPackageName":I
    invoke-direct {v1, v0, v2, v11}, Lcom/android/server/permission/access/permission/PermissionService;->isPackageVisibleToUid(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    move-object v2, v5

    .end local v5    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .local v2, "permission":Lcom/android/server/permission/access/permission/Permission;
    const/4 v5, 0x2

    const/4 v6, 0x0

    move v8, v4

    const/4 v4, 0x0

    move/from16 v23, v3

    move/from16 v3, p2

    .end local v3    # "index$iv$iv":I
    .local v23, "index$iv$iv":I
    invoke-static/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->generatePermissionInfo$default(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/permission/Permission;IIILjava/lang/Object;)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    goto :goto_3

    .line 314
    .end local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v23    # "index$iv$iv":I
    .restart local v3    # "index$iv$iv":I
    .restart local v5    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_5
    move/from16 v23, v3

    move v8, v4

    move-object v2, v5

    .end local v3    # "index$iv$iv":I
    .end local v5    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v23    # "index$iv$iv":I
    goto :goto_2

    .line 313
    .end local v22    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v23    # "index$iv$iv":I
    .local v2, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v3    # "index$iv$iv":I
    .restart local v5    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_6
    move-object/from16 v22, v2

    move/from16 v23, v3

    move v8, v4

    move-object v2, v5

    .line 318
    .end local v3    # "index$iv$iv":I
    .end local v5    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .local v2, "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v22    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .restart local v23    # "index$iv$iv":I
    :goto_2
    const/4 v4, 0x0

    .line 319
    :goto_3
    nop

    .line 88
    .end local v2    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .end local v21    # "$i$a$-mapNotNullIndexedTo-PermissionService$queryPermissionsByGroup$1$1":I
    if-eqz v4, :cond_7

    .line 2957
    .local v4, "it$iv":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 88
    .local v1, "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    invoke-interface {v14, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 48
    .end local v1    # "$i$a$-let-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$1$iv":I
    .end local v4    # "it$iv":Ljava/lang/Object;
    .end local v17    # "index$iv":I
    .end local v18    # "value$iv":Ljava/lang/Object;
    .end local v19    # "key$iv":Ljava/lang/Object;
    .end local v20    # "$i$a$-forEachIndexed-IndexedMapExtensionsKt$mapNotNullIndexedTo$1$iv":I
    :cond_7
    nop

    .line 47
    add-int/lit8 v3, v23, 0x1

    move-object/from16 v1, p0

    move v4, v8

    move-object/from16 v2, v22

    const/4 v8, 0x0

    .end local v23    # "index$iv$iv":I
    .restart local v3    # "index$iv$iv":I
    goto :goto_1

    .end local v22    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .local v2, "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    :cond_8
    move-object/from16 v22, v2

    move/from16 v23, v3

    .line 50
    .end local v2    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v3    # "index$iv$iv":I
    .restart local v22    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 89
    .end local v16    # "$i$f$forEachIndexed":I
    .end local v22    # "$this$forEachIndexed$iv$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .end local v12    # "$this$mapNotNullIndexedTo$iv":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v14    # "destination$iv":Ljava/util/Collection;
    .end local v15    # "$i$f$mapNotNullIndexedTo":I
    nop

    .line 311
    .end local v0    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v10    # "$i$a$-use-PermissionService$queryPermissionsByGroup$1":I
    .end local v11    # "callingUid":I
    .end local v13    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object v14

    :goto_4
    nop

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionGroupName":Ljava/lang/String;
    .end local p2    # "flags":I
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionGroupName":Ljava/lang/String;
    .restart local p2    # "flags":I
    :catchall_1
    move-exception v0

    invoke-static {v9, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public readLegacyPermissionStateTEMP()V
    .locals 0

    .line 2361
    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 1
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 2316
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v0}, Lcom/android/server/permission/access/AccessCheckingService;->initialize()V

    .line 2317
    return-void
.end method

.method public removeAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "allowlistedFlags"    # I
    .param p4, "userId"    # I

    .line 1800
    if-eqz p2, :cond_3

    .line 1801
    invoke-direct {p0, p2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceRestrictedPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1802
    return v1

    .line 1806
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/permission/access/permission/PermissionService;->getAllowlistedRestrictedPermissions(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1807
    return v1

    .line 1806
    :cond_1
    nop

    .line 1805
    move-object v4, v0

    .line 1809
    .local v4, "permissions":Ljava/util/ArrayList;
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1810
    nop

    .line 1811
    nop

    .line 1812
    nop

    .line 1813
    nop

    .line 1814
    nop

    .line 1815
    nop

    .line 1810
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move v6, p4

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p3    # "allowlistedFlags":I
    .end local p4    # "userId":I
    .local v3, "packageName":Ljava/lang/String;
    .local v5, "allowlistedFlags":I
    .local v6, "userId":I
    invoke-direct/range {v2 .. v7}, Lcom/android/server/permission/access/permission/PermissionService;->setAllowlistedRestrictedPermissions(Ljava/lang/String;Ljava/util/List;IIZ)Z

    move-result p1

    return p1

    .line 1819
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "allowlistedFlags":I
    .end local v6    # "userId":I
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p3    # "allowlistedFlags":I
    .restart local p4    # "userId":I
    :cond_2
    return v1

    .line 2940
    .end local v4    # "permissions":Ljava/util/ArrayList;
    :cond_3
    move-object v3, p1

    move v5, p3

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p3    # "allowlistedFlags":I
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "allowlistedFlags":I
    const/4 p1, 0x0

    .line 1800
    .local p1, "$i$a$-requireNotNull-PermissionService$removeAllowlistedRestrictedPermission$1":I
    nop

    .end local p1    # "$i$a$-requireNotNull-PermissionService$removeAllowlistedRestrictedPermission$1":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "permissionName cannot be null"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOnPermissionsChangeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 1978
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1979
    nop

    .line 1980
    nop

    .line 1978
    const-string v1, "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS"

    const-string/jumbo v2, "removeOnPermissionsChangeListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->onPermissionsChangeListeners:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;

    if-nez v0, :cond_0

    const-string/jumbo v0, "onPermissionsChangeListeners"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->removeListener(Landroid/permission/IOnPermissionsChangeListener;)V

    .line 1984
    return-void
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 14
    .param p1, "permissionName"    # Ljava/lang/String;

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 408
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string/jumbo v1, "packageManagerLocal"

    invoke-static {v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v1

    move-object v3, v1

    .line 2940
    .local v3, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v4, 0x0

    .line 408
    .local v4, "$i$a$-use-PermissionService$removePermission$1":I
    :try_start_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/permission/access/permission/PermissionService;->isUidInstantApp(Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v3    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v4    # "$i$a$-use-PermissionService$removePermission$1":I
    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_5

    .line 411
    iget-object v1, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v1, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v3, 0x0

    .line 293
    .local v3, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    const/4 v5, 0x0

    .line 294
    .local v5, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_1
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "state"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 294
    .restart local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_1
    move-object v2, v6

    .line 295
    .local v2, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :goto_0
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    .line 296
    .local v6, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v7, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v7, v2, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v7, "$this$removePermission_u24lambda_u2437":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v8, 0x0

    .line 412
    .local v8, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$removePermission$2":I
    invoke-static {p0, v7, p1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getAndEnforcePermissionTree(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/GetStateScope;Ljava/lang/String;)Lcom/android/server/permission/access/permission/Permission;

    .line 413
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v9

    .line 2940
    .local v9, "$this$removePermission_u24lambda_u2437_u24lambda_u2435":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v10, 0x0

    .line 413
    .local v10, "$i$a$-with-PermissionService$removePermission$2$permission$1":I
    invoke-virtual {v9, v7}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/permission/access/permission/Permission;

    .end local v9    # "$this$removePermission_u24lambda_u2437_u24lambda_u2435":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v10    # "$i$a$-with-PermissionService$removePermission$2$permission$1":I
    if-nez v11, :cond_2

    goto :goto_2

    .line 415
    .local v11, "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_2
    move-object v9, v11

    .local v9, "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    const/4 v10, 0x0

    .line 42
    .local v10, "$i$f$isDynamic":I
    invoke-virtual {v9}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 415
    .end local v9    # "this_$iv":Lcom/android/server/permission/access/permission/Permission;
    .end local v10    # "$i$f$isDynamic":I
    :goto_1
    if-eqz v12, :cond_4

    .line 422
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v9

    .line 2940
    .local v9, "$this$removePermission_u24lambda_u2437_u24lambda_u2436":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v10, 0x0

    .line 422
    .local v10, "$i$a$-with-PermissionService$removePermission$2$1":I
    invoke-virtual {v9, v7, v11}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->removePermission(Lcom/android/server/permission/access/MutateStateScope;Lcom/android/server/permission/access/permission/Permission;)V

    .line 423
    .end local v9    # "$this$removePermission_u24lambda_u2437_u24lambda_u2436":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v10    # "$i$a$-with-PermissionService$removePermission$2$1":I
    nop

    .line 296
    .end local v7    # "$this$removePermission_u24lambda_u2437":Lcom/android/server/permission/access/MutateStateScope;
    .end local v8    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$removePermission$2":I
    .end local v11    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :goto_2
    nop

    .line 297
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v1, v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v7

    .line 3026
    .local v7, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v8, 0x0

    .line 299
    .local v8, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v9, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v9, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v7, v9}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v7    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v8    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v2    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v6    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    sget-object v2, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    monitor-exit v4

    .line 301
    nop

    .line 424
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 417
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v2    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .restart local v6    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v7, "$this$removePermission_u24lambda_u2437":Lcom/android/server/permission/access/MutateStateScope;
    .local v8, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$removePermission$2":I
    .restart local v11    # "permission":Lcom/android/server/permission/access/permission/Permission;
    :cond_4
    :try_start_2
    new-instance v9, Ljava/lang/SecurityException;

    .line 418
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 417
    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "callingUid":I
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionName":Ljava/lang/String;
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    .end local v2    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v5    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v6    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v7    # "$this$removePermission_u24lambda_u2437":Lcom/android/server/permission/access/MutateStateScope;
    .end local v8    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$removePermission$2":I
    .end local v11    # "permission":Lcom/android/server/permission/access/permission/Permission;
    .restart local v0    # "callingUid":I
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionName":Ljava/lang/String;
    :goto_3
    monitor-exit v4

    throw v2

    .line 409
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :cond_5
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Instant applications don\'t have access to this method"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 408
    :catchall_1
    move-exception v2

    .end local v0    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "permissionName":Ljava/lang/String;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .restart local v0    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "permissionName":Ljava/lang/String;
    :catchall_2
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/pkg/AndroidPackage;IZ)V
    .locals 11
    .param p1, "androidPackage"    # Lcom/android/server/pm/pkg/AndroidPackage;
    .param p2, "userId"    # I
    .param p3, "restorePregrants"    # Z

    .line 1946
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    .line 294
    .local v3, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 293
    .end local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 294
    .restart local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_0
    :goto_0
    nop

    .line 295
    .local v4, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    .line 296
    .local v5, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v4, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v6, "$this$resetRuntimePermissions_u24lambda_u24119":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v7, 0x0

    .line 1947
    .local v7, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$resetRuntimePermissions$1":I
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v8

    .local v8, "$this$resetRuntimePermissions_u24lambda_u24119_u24lambda_u24117":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v9, 0x0

    .line 1948
    .local v9, "$i$a$-with-PermissionService$resetRuntimePermissions$1$1":I
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v10, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V

    .line 1949
    nop

    .line 1947
    .end local v8    # "$this$resetRuntimePermissions_u24lambda_u24119_u24lambda_u24117":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v9    # "$i$a$-with-PermissionService$resetRuntimePermissions$1$1":I
    nop

    .line 1950
    invoke-static {p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v8

    .line 2940
    .local v8, "$this$resetRuntimePermissions_u24lambda_u24119_u24lambda_u24118":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 v9, 0x0

    .line 1950
    .local v9, "$i$a$-with-PermissionService$resetRuntimePermissions$1$2":I
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6, v10, p2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 1951
    .end local v8    # "$this$resetRuntimePermissions_u24lambda_u24119_u24lambda_u24118":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .end local v9    # "$i$a$-with-PermissionService$resetRuntimePermissions$1$2":I
    nop

    .line 296
    .end local v6    # "$this$resetRuntimePermissions_u24lambda_u24119":Lcom/android/server/permission/access/MutateStateScope;
    .end local v7    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$resetRuntimePermissions$1":I
    nop

    .line 297
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v0, v5}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v6

    .line 3196
    .local v6, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v7, 0x0

    .line 299
    .local v7, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v8, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v8, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v6, v8}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v6    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v7    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v4    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v5    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v2

    .line 301
    nop

    .line 1952
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v1    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_1
    monitor-exit v2

    throw v3
.end method

.method public resetRuntimePermissionsForUser(I)V
    .locals 23
    .param p1, "userId"    # I

    .line 1955
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_0

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v4

    move-object v5, v4

    .local v5, "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v6, 0x0

    .line 1956
    .local v6, "$i$a$-use-PermissionService$resetRuntimePermissionsForUser$1":I
    :try_start_0
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    move-object v7, v0

    .local v7, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v8, 0x0

    .line 293
    .local v8, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_1
    invoke-static {v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v10

    if-nez v10, :cond_1

    const-string/jumbo v10, "state"

    invoke-static {v10}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v10, 0x0

    goto :goto_0

    .line 293
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 294
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_1
    :goto_0
    nop

    .line 295
    .local v10, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v10}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v11

    .line 296
    .local v11, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v12, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v12, v10, v11}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v12, "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v13, 0x0

    .line 1957
    .local v13, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$resetRuntimePermissionsForUser$1$1":I
    invoke-interface {v5}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v14

    .local v14, "$this$forEach$iv":Ljava/util/Map;
    const/4 v15, 0x0

    .line 3203
    .local v15, "$i$f$forEach":I
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .local v17, "element$iv":Ljava/util/Map$Entry;
    const/16 v18, 0x0

    .line 1957
    .local v18, "$i$a$-forEach-PermissionService$resetRuntimePermissionsForUser$1$1$1":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/pm/pkg/PackageState;

    .line 1958
    .local v19, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 1959
    move/from16 v22, v0

    goto :goto_2

    .line 1961
    :cond_2
    invoke-static {v1}, Lcom/android/server/permission/access/permission/PermissionService;->access$getPolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    move-result-object v20

    move-object/from16 v21, v20

    .line 2940
    .local v21, "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24120":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/16 v20, 0x0

    .line 1961
    .local v20, "$i$a$-with-PermissionService$resetRuntimePermissionsForUser$1$1$1$1":I
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move/from16 v22, v0

    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v22, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    const/4 v0, 0x1

    move-object/from16 v1, v21

    .end local v21    # "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24120":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .local v1, "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24120":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    invoke-virtual {v1, v12, v3, v2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;IZ)V

    .line 1962
    .end local v1    # "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24120":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    .end local v20    # "$i$a$-with-PermissionService$resetRuntimePermissionsForUser$1$1$1$1":I
    invoke-static/range {p0 .. p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$getDevicePolicy$p(Lcom/android/server/permission/access/permission/PermissionService;)Lcom/android/server/permission/access/permission/DevicePermissionPolicy;

    move-result-object v0

    .line 2940
    .local v0, "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24121":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    const/4 v1, 0x0

    .line 1962
    .local v1, "$i$a$-with-PermissionService$resetRuntimePermissionsForUser$1$1$1$2":I
    invoke-interface/range {v19 .. v19}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v12, v3, v2}, Lcom/android/server/permission/access/permission/DevicePermissionPolicy;->resetRuntimePermissions(Lcom/android/server/permission/access/MutateStateScope;Ljava/lang/String;I)V

    .line 1963
    .end local v0    # "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123_u24lambda_u24122_u24lambda_u24121":Lcom/android/server/permission/access/permission/DevicePermissionPolicy;
    .end local v1    # "$i$a$-with-PermissionService$resetRuntimePermissionsForUser$1$1$1$2":I
    nop

    .line 3203
    .end local v18    # "$i$a$-forEach-PermissionService$resetRuntimePermissionsForUser$1$1$1":I
    .end local v19    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :goto_2
    move-object/from16 v1, p0

    move/from16 v0, v22

    .end local v17    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_1

    .line 3204
    .end local v22    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_3
    move/from16 v22, v0

    .line 1964
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v14    # "$this$forEach$iv":Ljava/util/Map;
    .end local v15    # "$i$f$forEach":I
    .restart local v22    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    nop

    .line 296
    .end local v12    # "$this$resetRuntimePermissionsForUser_u24lambda_u24124_u24lambda_u24123":Lcom/android/server/permission/access/MutateStateScope;
    .end local v13    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$resetRuntimePermissionsForUser$1$1":I
    nop

    .line 297
    invoke-static {v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v7, v11}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v7}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v0

    .line 3208
    .local v0, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v1, 0x0

    .line 299
    .local v1, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v3, v11}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v0, v3}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v0    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v1    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v10    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v11    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v22    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    :try_start_2
    monitor-exit v9

    .line 301
    nop

    .line 1965
    .end local v7    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    nop

    .end local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$resetRuntimePermissionsForUser$1":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1955
    const/4 v0, 0x0

    invoke-static {v4, v0}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    .line 1966
    return-void

    .line 1955
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    .line 293
    .restart local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .restart local v6    # "$i$a$-use-PermissionService$resetRuntimePermissionsForUser$1":I
    .restart local v7    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v8    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_3
    :try_start_3
    monitor-exit v9

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "userId":I
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1955
    .end local v5    # "snapshot":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v6    # "$i$a$-use-PermissionService$resetRuntimePermissionsForUser$1":I
    .end local v7    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v8    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "userId":I
    :goto_4
    nop

    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "userId":I
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "userId":I
    :catchall_2
    move-exception v0

    invoke-static {v4, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2076
    if-eqz p1, :cond_2

    .line 2077
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2079
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2080
    .local v1, "$i$a$-synchronized-PermissionService$restoreDelayedRuntimePermissions$2":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2081
    nop

    .end local v1    # "$i$a$-synchronized-PermissionService$restoreDelayedRuntimePermissions$2":I
    monitor-exit v0

    return-void

    .line 2083
    .restart local v1    # "$i$a$-synchronized-PermissionService$restoreDelayedRuntimePermissions$2":I
    :cond_0
    nop

    .end local v1    # "$i$a$-synchronized-PermissionService$restoreDelayedRuntimePermissions$2":I
    :try_start_1
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2079
    monitor-exit v0

    .line 2084
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-nez v0, :cond_1

    const-string/jumbo v0, "permissionControllerManager"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2085
    :cond_1
    nop

    .line 2086
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2087
    invoke-static {}, Lcom/android/server/PermissionThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 2084
    new-instance v3, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;

    invoke-direct {v3, p0, p2}, Lcom/android/server/permission/access/permission/PermissionService$restoreDelayedRuntimePermissions$3;-><init>(Lcom/android/server/permission/access/permission/PermissionService;I)V

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/permission/PermissionControllerManager;->applyStagedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 2096
    return-void

    .line 2079
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2940
    :cond_2
    const/4 v0, 0x0

    .line 2076
    .local v0, "$i$a$-requireNotNull-PermissionService$restoreDelayedRuntimePermissions$1":I
    const-string/jumbo v0, "packageName"

    .end local v0    # "$i$a$-requireNotNull-PermissionService$restoreDelayedRuntimePermissions$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public restoreRuntimePermissions([BI)V
    .locals 4
    .param p1, "backup"    # [B
    .param p2, "userId"    # I

    .line 2063
    if-eqz p1, :cond_1

    .line 2064
    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 2066
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2067
    .local v1, "$i$a$-synchronized-PermissionService$restoreRuntimePermissions$2":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/permission/access/permission/PermissionService;->isDelayedPermissionBackupFinished:Landroid/util/SparseBooleanArray;

    .local v2, "$this$minusAssign$iv":Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$f$minusAssign":I
    invoke-virtual {v2, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 66
    nop

    .line 2068
    .end local v2    # "$this$minusAssign$iv":Landroid/util/SparseBooleanArray;
    .end local v3    # "$i$f$minusAssign":I
    nop

    .end local v1    # "$i$a$-synchronized-PermissionService$restoreRuntimePermissions$2":I
    sget-object v1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2066
    monitor-exit v0

    .line 2069
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->permissionControllerManager:Landroid/permission/PermissionControllerManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "permissionControllerManager"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2070
    :cond_0
    nop

    .line 2071
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2069
    invoke-virtual {v0, p1, v1}, Landroid/permission/PermissionControllerManager;->stageAndApplyRuntimePermissionsBackup([BLandroid/os/UserHandle;)V

    .line 2073
    return-void

    .line 2066
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 2940
    :cond_1
    const/4 v0, 0x0

    .line 2063
    .local v0, "$i$a$-requireNotNull-PermissionService$restoreRuntimePermissions$1":I
    const-string v0, "backup"

    .end local v0    # "$i$a$-requireNotNull-PermissionService$restoreRuntimePermissions$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public revokePostNotificationPermissionWithoutKillForTest(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 774
    nop

    .line 775
    nop

    .line 776
    nop

    .line 777
    nop

    .line 778
    nop

    .line 779
    nop

    .line 780
    nop

    .line 774
    const/16 v8, 0x40

    const/4 v9, 0x0

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    const-string v4, "default:0"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userId":I
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 782
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 760
    nop

    .line 761
    nop

    .line 762
    nop

    .line 763
    nop

    .line 764
    nop

    .line 765
    nop

    .line 760
    nop

    .line 766
    nop

    .line 760
    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v2, p4

    move-object v7, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    .end local p5    # "reason":Ljava/lang/String;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "userId":I
    .local v3, "permissionName":Ljava/lang/String;
    .local v4, "deviceId":Ljava/lang/String;
    .local v7, "reason":Ljava/lang/String;
    invoke-static/range {v0 .. v9}, Lcom/android/server/permission/access/permission/PermissionService;->setRuntimePermissionGranted$default(Lcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)V

    .line 768
    return-void
.end method

.method public setDefaultPermissionGrantFingerprint(Ljava/lang/String;I)V
    .locals 12
    .param p1, "fingerprint"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2369
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 293
    .local v1, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    const/4 v3, 0x0

    .line 294
    .local v3, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string/jumbo v4, "state"

    invoke-static {v4}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v5

    goto :goto_0

    .line 293
    .end local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 294
    .restart local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_0
    :goto_0
    nop

    .line 295
    .local v4, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    invoke-virtual {v4}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v6

    .line 296
    .local v6, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v7, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v7, v4, v6}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v7, "$this$setDefaultPermissionGrantFingerprint_u24lambda_u24189":Lcom/android/server/permission/access/MutateStateScope;
    const/4 v8, 0x0

    .line 2370
    .local v8, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setDefaultPermissionGrantFingerprint$1":I
    invoke-virtual {v7}, Lcom/android/server/permission/access/MutateStateScope;->getNewState()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v9, p2, v10, v11, v5}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState$default(Lcom/android/server/permission/access/MutableAccessState;IIILjava/lang/Object;)Lcom/android/server/permission/access/MutableUserState;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5, p1}, Lcom/android/server/permission/access/MutableUserState;->setDefaultPermissionGrantFingerprintPublic(Ljava/lang/String;)V

    .line 2371
    nop

    .line 296
    .end local v7    # "$this$setDefaultPermissionGrantFingerprint_u24lambda_u24189":Lcom/android/server/permission/access/MutateStateScope;
    .end local v8    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$setDefaultPermissionGrantFingerprint$1":I
    nop

    .line 297
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V

    .line 298
    invoke-static {v0, v6}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v5

    .line 3395
    .local v5, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v7, 0x0

    .line 299
    .local v7, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v8, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v8, v6}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v5, v8}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v5    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v7    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v3    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .end local v4    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v6    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    sget-object v3, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit v2

    .line 301
    nop

    .line 2372
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v1    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :goto_1
    monitor-exit v2

    throw v3
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 1275
    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_1

    .line 1276
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldShowRequestPermissionRationale: Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    return v9

    .line 1280
    :cond_1
    nop

    .line 1281
    nop

    .line 1282
    nop

    .line 1283
    nop

    .line 1284
    nop

    .line 1280
    const/4 v10, 0x1

    const-string/jumbo v0, "shouldShowRequestPermissionRationale"

    invoke-direct {v1, v4, v10, v9, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1287
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1289
    .local v11, "callingUid":I
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_2
    invoke-direct {v1, v0, v11, v4}, Lcom/android/server/permission/access/permission/PermissionService;->withFilteredSnapshot(Lcom/android/server/pm/PackageManagerLocal;II)Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;

    move-result-object v2

    move-object v0, v2

    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    const/4 v3, 0x0

    .line 1290
    .local v3, "$i$a$-use-PermissionService$shouldShowRequestPermissionRationale$packageState$1":I
    :try_start_0
    invoke-interface {v0, v7}, Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;->getPackageState(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1289
    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$FilteredSnapshot;
    .end local v3    # "$i$a$-use-PermissionService$shouldShowRequestPermissionRationale$packageState$1":I
    invoke-static {v2, v8}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    if-nez v5, :cond_3

    .line 1291
    return v9

    .line 1289
    :cond_3
    nop

    .line 1288
    move-object v3, v5

    .line 1292
    .local v3, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v12

    .line 1293
    .local v12, "appId":I
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq v0, v12, :cond_4

    .line 1294
    return v9

    .line 1297
    :cond_4
    const/4 v0, 0x0

    .line 1298
    .local v0, "flags":I
    iget-object v13, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v13, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v14, 0x0

    .line 287
    .local v14, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v13}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v8

    :cond_5
    invoke-direct {v2, v5}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$shouldShowRequestPermissionRationale_u24lambda_u2485":Lcom/android/server/permission/access/GetStateScope;
    const/4 v15, 0x0

    .line 1299
    .local v15, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$shouldShowRequestPermissionRationale$1":I
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->isPermissionGranted(Lcom/android/server/permission/access/GetStateScope;Lcom/android/server/pm/pkg/PackageState;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v17, v3

    .end local v3    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .local v17, "packageState":Lcom/android/server/pm/pkg/PackageState;
    if-eqz v16, :cond_6

    .line 1300
    return v9

    .line 1303
    :cond_6
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v4, p4

    move v3, v12

    .end local v12    # "appId":I
    .local v3, "appId":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/permission/access/permission/PermissionService;->getPermissionFlagsWithPolicy(Lcom/android/server/permission/access/GetStateScope;IILjava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1304
    .end local v0    # "flags":I
    .local v12, "flags":I
    nop

    .line 287
    .end local v2    # "$this$shouldShowRequestPermissionRationale_u24lambda_u2485":Lcom/android/server/permission/access/GetStateScope;
    .end local v15    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$shouldShowRequestPermissionRationale$1":I
    nop

    .line 1305
    .end local v13    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v14    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    const v0, 0x401c0

    invoke-static {v12, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasAnyBit(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1306
    return v9

    .line 1309
    :cond_7
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    move-object/from16 v5, p2

    invoke-static {v5, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_9

    const-class v0, Landroid/os/Binder;

    .line 1311
    move-object v2, v0

    .local v2, "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    const/4 v6, 0x0

    .line 23
    .local v6, "$i$f$withClearedCallingIdentity":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 24
    .local v13, "token$iv":J
    nop

    .line 25
    const/4 v15, 0x0

    .line 1312
    .local v15, "$i$a$-withClearedCallingIdentity-PermissionService$shouldShowRequestPermissionRationale$isBackgroundRationaleChangeEnabled$1":I
    nop

    .line 1313
    :try_start_1
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    if-nez v0, :cond_8

    const-string/jumbo v0, "platformCompat"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    .end local v15    # "$i$a$-withClearedCallingIdentity-PermissionService$shouldShowRequestPermissionRationale$isBackgroundRationaleChangeEnabled$1":I
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1318
    .restart local v15    # "$i$a$-withClearedCallingIdentity-PermissionService$shouldShowRequestPermissionRationale$isBackgroundRationaleChangeEnabled$1":I
    :catch_0
    move-exception v0

    move/from16 v18, v10

    goto :goto_1

    .line 1313
    :cond_8
    move-object v8, v0

    .line 1314
    :goto_0
    move/from16 v18, v10

    :try_start_2
    sget-wide v9, Lcom/android/server/permission/access/permission/PermissionService;->BACKGROUND_RATIONALE_CHANGE_ID:J

    .line 1315
    nop

    .line 1316
    nop

    .line 1313
    invoke-interface {v8, v9, v10, v7, v4}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1318
    :catch_1
    move-exception v0

    :goto_1
    nop

    .line 1320
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v8, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    .line 1321
    const-string/jumbo v9, "shouldShowRequestPermissionRationale: Unable to check if compatibility change is enabled"

    .line 1323
    nop

    .line 1319
    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1325
    const/4 v9, 0x0

    .line 1326
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    nop

    .line 25
    .end local v15    # "$i$a$-withClearedCallingIdentity-PermissionService$shouldShowRequestPermissionRationale$isBackgroundRationaleChangeEnabled$1":I
    nop

    .line 27
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    nop

    .line 1311
    .end local v2    # "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    .end local v6    # "$i$f$withClearedCallingIdentity":I
    .end local v13    # "token$iv":J
    nop

    .line 1310
    nop

    .line 1328
    .local v9, "isBackgroundRationaleChangeEnabled":Z
    if-eqz v9, :cond_9

    .line 1329
    return v18

    .line 27
    .end local v9    # "isBackgroundRationaleChangeEnabled":Z
    .restart local v2    # "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    .restart local v6    # "$i$f$withClearedCallingIdentity":I
    .restart local v13    # "token$iv":J
    :goto_3
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1333
    .end local v2    # "$this$withClearedCallingIdentity$iv":Ljava/lang/Class;
    .end local v6    # "$i$f$withClearedCallingIdentity":I
    .end local v13    # "token$iv":J
    :cond_9
    const/16 v0, 0x20

    invoke-static {v12, v0}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v0

    return v0

    .line 1289
    .end local v3    # "appId":I
    .end local v12    # "flags":I
    .end local v17    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :catchall_1
    move-exception v0

    move-object/from16 v5, p2

    move-object v3, v0

    .end local v11    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "permissionName":Ljava/lang/String;
    .end local p3    # "deviceId":Ljava/lang/String;
    .end local p4    # "userId":I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .restart local v11    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "permissionName":Ljava/lang/String;
    .restart local p3    # "deviceId":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_2
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;I)V
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "enforceAdjustPolicyPermission"    # Z
    .param p6, "deviceId"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .line 1345
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move-object/from16 v5, p2

    move/from16 v4, p7

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1346
    .local v14, "callingUid":I
    nop

    .line 1347
    nop

    .line 1374
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    if-nez v2, :cond_0

    const-string/jumbo v2, "userManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1375
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePermissionFlags: Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-void

    .line 1379
    :cond_1
    nop

    .line 1380
    nop

    .line 1381
    nop

    .line 1382
    nop

    .line 1383
    const-string/jumbo v2, "updatePermissionFlags"

    .line 1379
    invoke-direct {v1, v4, v0, v0, v2}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1385
    nop

    .line 1386
    const-string/jumbo v2, "updatePermissionFlags"

    .line 1387
    const-string v6, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1388
    const-string v7, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    .line 1387
    nop

    .line 1385
    invoke-direct {v1, v2, v6}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1395
    invoke-direct {v1, v14}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v2

    const/4 v6, 0x0

    if-nez v2, :cond_6

    .line 1396
    const/4 v2, 0x4

    move/from16 v7, p3

    invoke-static {v7, v2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1397
    if-eqz p5, :cond_2

    .line 1398
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->context:Landroid/content/Context;

    .line 1399
    const-string v8, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    .line 1400
    const-string v9, "Need android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY to change policy flags"

    .line 1398
    invoke-virtual {v2, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1404
    :cond_2
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_3

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_3
    invoke-virtual {v2, v14}, Landroid/content/pm/PackageManagerInternal;->getUidTargetSdkVersion(I)I

    move-result v2

    .line 1405
    .local v2, "targetSdkVersion":I
    const/16 v8, 0x1d

    if-ge v2, v8, :cond_4

    move v8, v0

    goto :goto_0

    :cond_4
    move v8, v6

    :goto_0
    if-eqz v8, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 1406
    .local v0, "$i$a$-require-PermissionService$updatePermissionFlags$1":I
    const-string v3, "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY needs to be checked for packages targeting 29 or later when changing policy flags"

    .line 1408
    nop

    .line 1405
    .end local v0    # "$i$a$-require-PermissionService$updatePermissionFlags$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    .end local v2    # "targetSdkVersion":I
    :cond_6
    move/from16 v7, p3

    .line 1419
    :cond_7
    :goto_1
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_8

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_8
    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v15

    .line 1420
    .local v15, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-eqz v15, :cond_9

    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v16, v2

    .line 1424
    .local v16, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    nop

    .line 1425
    if-eqz v16, :cond_13

    .line 1426
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_a

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_a
    invoke-virtual {v2, v13, v14, v4, v6}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;IIZ)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_8

    .line 1435
    :cond_b
    invoke-direct {v1, v14}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v9

    .line 1438
    .local v9, "canUpdateSystemFlags":Z
    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1440
    move v11, v0

    goto :goto_5

    .line 1444
    :cond_c
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v2, :cond_d

    const-string/jumbo v2, "packageManagerInternal"

    invoke-static {v2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_d
    invoke-virtual {v2, v13, v4}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1443
    nop

    .line 1445
    .local v2, "sharedUserPackageNames":[Ljava/lang/String;
    move-object v8, v2

    .local v8, "$this$any$iv":[Ljava/lang/Object;
    const/4 v10, 0x0

    .line 3118
    .local v10, "$i$f$any":I
    array-length v11, v8

    move v12, v6

    :goto_3
    if-ge v12, v11, :cond_11

    aget-object v17, v8, v12

    .local v17, "element$iv":Ljava/lang/Object;
    move-object/from16 v18, v17

    .local v18, "sharedUserPackageName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1446
    .local v19, "$i$a$-any-PermissionService$updatePermissionFlags$isPermissionRequested$1":I
    move/from16 v20, v0

    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    const-string/jumbo v0, "packageManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_e
    move-object/from16 v3, v18

    .end local v18    # "sharedUserPackageName":Ljava/lang/String;
    .local v3, "sharedUserPackageName":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    .line 1447
    .local v0, "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    if-eqz v0, :cond_f

    .line 1448
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    move/from16 v0, v20

    goto :goto_4

    :cond_f
    const/4 v0, 0x0

    .line 3118
    .end local v0    # "sharedUserPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v3    # "sharedUserPackageName":Ljava/lang/String;
    .end local v19    # "$i$a$-any-PermissionService$updatePermissionFlags$isPermissionRequested$1":I
    :goto_4
    if-eqz v0, :cond_10

    move/from16 v11, v20

    goto :goto_5

    .end local v17    # "element$iv":Ljava/lang/Object;
    :cond_10
    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v20

    const/4 v6, 0x0

    goto :goto_3

    .line 3119
    :cond_11
    const/4 v11, 0x0

    .line 1438
    .end local v2    # "sharedUserPackageNames":[Ljava/lang/String;
    .end local v8    # "$this$any$iv":[Ljava/lang/Object;
    .end local v10    # "$i$f$any":I
    :goto_5
    nop

    .line 1437
    nop

    .line 1452
    .local v11, "isPermissionRequested":Z
    invoke-interface {v15}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 1453
    .local v3, "appId":I
    iget-object v2, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/16 v17, 0x0

    .line 293
    .local v17, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_0
    invoke-static {v2}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v6, :cond_12

    :try_start_1
    const-string/jumbo v6, "state"

    invoke-static {v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v21, 0x0

    goto :goto_6

    .line 293
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 294
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_12
    move-object/from16 v21, v6

    :goto_6
    move-object/from16 v6, v21

    .line 295
    .local v6, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :try_start_2
    invoke-virtual {v6}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v8

    .line 296
    .local v8, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v10, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v10, v6, v8}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v10, "$this$updatePermissionFlags_u24lambda_u2489":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v19, 0x0

    .line 1454
    .local v19, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlags$2":I
    nop

    .line 1455
    nop

    .line 1456
    nop

    .line 1457
    nop

    .line 1458
    nop

    .line 1459
    nop

    .line 1460
    nop

    .line 1461
    nop

    .line 1462
    nop

    .line 1463
    nop

    .line 1464
    const-string/jumbo v12, "updatePermissionFlags"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1465
    nop

    .line 1454
    move-object/from16 v20, v2

    move-object v2, v10

    .end local v10    # "$this$updatePermissionFlags_u24lambda_u2489":Lcom/android/server/permission/access/MutateStateScope;
    .local v2, "$this$updatePermissionFlags_u24lambda_u2489":Lcom/android/server/permission/access/MutateStateScope;
    .local v20, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v10, 0x1

    move/from16 v22, v0

    move-object v0, v8

    move-object/from16 v21, v20

    move/from16 v8, p4

    move-object/from16 v20, v6

    move-object/from16 v6, p6

    .end local v6    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v8    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v20, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v21, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v22, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_3
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 1467
    nop

    .line 296
    .end local v2    # "$this$updatePermissionFlags_u24lambda_u2489":Lcom/android/server/permission/access/MutateStateScope;
    .end local v19    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlags$2":I
    nop

    .line 297
    invoke-static/range {v21 .. v21}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 298
    move-object/from16 v1, v21

    .end local v21    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v1, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v1}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v2

    .line 3127
    .local v2, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v4, 0x0

    .line 299
    .local v4, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v5, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v5, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v2, v5}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v2    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v4    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v20    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v22    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 293
    monitor-exit v18

    .line 301
    nop

    .line 1468
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_1
    move-exception v0

    goto :goto_7

    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v21    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_2
    move-exception v0

    move-object/from16 v1, v21

    .end local v21    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    goto :goto_7

    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v2, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :goto_7
    monitor-exit v18

    throw v0

    .line 1428
    .end local v1    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v3    # "appId":I
    .end local v9    # "canUpdateSystemFlags":Z
    .end local v11    # "isPermissionRequested":Z
    .end local v17    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :cond_13
    :goto_8
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePermissionFlags: Unknown package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    return-void
.end method

.method public updatePermissionFlagsForAllApps(III)V
    .locals 34
    .param p1, "flagMask"    # I
    .param p2, "flagValues"    # I
    .param p3, "userId"    # I

    .line 1471
    move-object/from16 v1, p0

    move/from16 v4, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1472
    .local v14, "callingUid":I
    nop

    .line 1495
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->userManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userManagerInternal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1496
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePermissionFlagsForAllApps: Unknown user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    return-void

    .line 1500
    :cond_1
    nop

    .line 1501
    nop

    .line 1502
    nop

    .line 1503
    nop

    .line 1504
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    .line 1500
    const/4 v3, 0x1

    invoke-direct {v1, v4, v3, v3, v0}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfCrossUserPermission(IZZLjava/lang/String;)V

    .line 1506
    nop

    .line 1507
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    .line 1508
    const-string v3, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    .line 1509
    const-string v5, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    .line 1508
    nop

    .line 1506
    invoke-direct {v1, v0, v3}, Lcom/android/server/permission/access/permission/PermissionService;->enforceCallingOrSelfAnyPermission(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1514
    invoke-direct {v1, v14}, Lcom/android/server/permission/access/permission/PermissionService;->isRootOrSystemUid(I)Z

    move-result v9

    .line 1516
    .local v9, "canUpdateSystemFlags":Z
    iget-object v0, v1, Lcom/android/server/permission/access/permission/PermissionService;->packageManagerLocal:Lcom/android/server/pm/PackageManagerLocal;

    if-nez v0, :cond_2

    const-string/jumbo v0, "packageManagerLocal"

    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal;->withUnfilteredSnapshot()Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;

    move-result-object v3

    move-object v0, v3

    .line 2940
    .local v0, "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    const/4 v5, 0x0

    .line 1516
    .local v5, "$i$a$-use-PermissionService$updatePermissionFlagsForAllApps$packageStates$1":I
    :try_start_0
    invoke-interface {v0}, Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;->getPackageStates()Ljava/util/Map;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .end local v0    # "it":Lcom/android/server/pm/PackageManagerLocal$UnfilteredSnapshot;
    .end local v5    # "$i$a$-use-PermissionService$updatePermissionFlagsForAllApps$packageStates$1":I
    invoke-static {v3, v2}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v15, v6

    .line 1517
    .local v15, "packageStates":Ljava/util/Map;
    iget-object v3, v1, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v3, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/16 v16, 0x0

    .line 293
    .local v16, "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getStateLock$p(Lcom/android/server/permission/access/AccessCheckingService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    const/4 v0, 0x0

    .line 294
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_1
    invoke-static {v3}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-nez v5, :cond_3

    :try_start_2
    const-string/jumbo v5, "state"

    invoke-static {v5}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 293
    .end local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_0
    move-exception v0

    move-object v8, v3

    goto/16 :goto_4

    .line 294
    .restart local v0    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :cond_3
    move-object v2, v5

    .line 295
    .local v2, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/permission/access/AccessState;->toMutable()Lcom/android/server/permission/access/MutableAccessState;

    move-result-object v5

    .line 296
    .local v5, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    new-instance v6, Lcom/android/server/permission/access/MutateStateScope;

    invoke-direct {v6, v2, v5}, Lcom/android/server/permission/access/MutateStateScope;-><init>(Lcom/android/server/permission/access/AccessState;Lcom/android/server/permission/access/MutableAccessState;)V

    .local v6, "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    const/16 v18, 0x0

    .line 1518
    .local v18, "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlagsForAllApps$1":I
    move-object/from16 v19, v15

    .local v19, "$this$forEach$iv":Ljava/util/Map;
    const/16 v20, 0x0

    .line 3134
    .local v20, "$i$f$forEach":I
    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v7, :cond_7

    :try_start_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object/from16 v22, v7

    .local v22, "element$iv":Ljava/util/Map$Entry;
    const/16 v23, 0x0

    .line 1518
    .local v23, "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1":I
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/PackageState;

    move-object/from16 v24, v7

    .line 1519
    .local v24, "packageState":Lcom/android/server/pm/pkg/PackageState;
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->isApex()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1520
    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v0, v5

    move-object v2, v6

    goto/16 :goto_3

    .line 1522
    :cond_4
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v7

    if-nez v7, :cond_5

    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v0, v5

    move-object v2, v6

    goto/16 :goto_3

    :cond_5
    move-object/from16 v25, v7

    .line 1523
    .local v25, "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    invoke-interface/range {v25 .. v25}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v7

    move-object/from16 v26, v7

    .local v26, "$this$forEach$iv":Ljava/lang/Iterable;
    const/16 v27, 0x0

    .line 3135
    .local v27, "$i$f$forEach":I
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v29, v7

    .local v29, "element$iv":Ljava/lang/Object;
    move-object/from16 v7, v29

    check-cast v7, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .local v7, "permissionName":Ljava/lang/String;
    const/16 v30, 0x0

    .line 1524
    .local v30, "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1$1":I
    nop

    .line 1525
    move-object v8, v3

    .end local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v8, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :try_start_5
    invoke-interface/range {v24 .. v24}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v3

    .line 1526
    nop

    .line 1527
    nop

    .line 1528
    move-object v10, v2

    move-object v2, v6

    .end local v6    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .local v2, "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .local v10, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    const-string v6, "default:0"

    .line 1529
    nop

    .line 1530
    nop

    .line 1531
    nop

    .line 1532
    nop

    .line 1533
    nop

    .line 1534
    const-string/jumbo v12, "updatePermissionFlagsForAllApps"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1535
    nop

    .line 1524
    move-object v11, v10

    .end local v10    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v11, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    const/4 v10, 0x0

    move-object/from16 v31, v11

    .end local v11    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .local v31, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    const/4 v11, 0x1

    move/from16 v33, v0

    move-object v0, v5

    move-object v5, v7

    move-object/from16 v32, v8

    move/from16 v7, p1

    move/from16 v8, p2

    .end local v7    # "permissionName":Ljava/lang/String;
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v5, "permissionName":Ljava/lang/String;
    .local v32, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v33, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :try_start_6
    invoke-static/range {v1 .. v13}, Lcom/android/server/permission/access/permission/PermissionService;->access$updatePermissionFlags(Lcom/android/server/permission/access/permission/PermissionService;Lcom/android/server/permission/access/MutateStateScope;IILjava/lang/String;Ljava/lang/String;IIZZZLjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1537
    nop

    .line 3135
    .end local v5    # "permissionName":Ljava/lang/String;
    .end local v30    # "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1$1":I
    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object v5, v0

    move-object v6, v2

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v0, v33

    .end local v29    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 293
    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v2    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v18    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlagsForAllApps$1":I
    .end local v19    # "$this$forEach$iv":Ljava/util/Map;
    .end local v20    # "$i$f$forEach":I
    .end local v22    # "element$iv":Ljava/util/Map$Entry;
    .end local v23    # "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1":I
    .end local v24    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .end local v25    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v26    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v27    # "$i$f$forEach":I
    .end local v31    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v33    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    :catchall_1
    move-exception v0

    move-object/from16 v8, v32

    goto :goto_4

    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_2
    move-exception v0

    move-object/from16 v32, v8

    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    goto :goto_4

    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_3
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v8, v32

    .end local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    goto :goto_4

    .line 3136
    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v2, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .local v5, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v6    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v18    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlagsForAllApps$1":I
    .restart local v19    # "$this$forEach$iv":Ljava/util/Map;
    .restart local v20    # "$i$f$forEach":I
    .restart local v22    # "element$iv":Ljava/util/Map$Entry;
    .restart local v23    # "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1":I
    .restart local v24    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    .restart local v25    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .restart local v26    # "$this$forEach$iv":Ljava/lang/Iterable;
    .restart local v27    # "$i$f$forEach":I
    :cond_6
    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v0, v5

    move-object v2, v6

    .line 1538
    .end local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v6    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .end local v25    # "androidPackage":Lcom/android/server/pm/pkg/AndroidPackage;
    .end local v26    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v27    # "$i$f$forEach":I
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v2, "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v31    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v33    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    nop

    .line 3134
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v23    # "$i$a$-forEach-PermissionService$updatePermissionFlagsForAllApps$1$1":I
    .end local v24    # "packageState":Lcom/android/server/pm/pkg/PackageState;
    :goto_3
    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object v5, v0

    move-object v6, v2

    move-object/from16 v2, v31

    move-object/from16 v3, v32

    move/from16 v0, v33

    .end local v22    # "element$iv":Ljava/util/Map$Entry;
    goto/16 :goto_1

    .line 3137
    .end local v31    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v33    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v0, "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    .local v2, "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v5    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .restart local v6    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    :cond_7
    move/from16 v33, v0

    move-object/from16 v31, v2

    move-object/from16 v32, v3

    move-object v0, v5

    move-object v2, v6

    .line 1539
    .end local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v5    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v6    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .end local v19    # "$this$forEach$iv":Ljava/util/Map;
    .end local v20    # "$i$f$forEach":I
    .local v0, "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .local v2, "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .restart local v31    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .restart local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v33    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    nop

    .line 296
    .end local v2    # "$this$updatePermissionFlagsForAllApps_u24lambda_u2493":Lcom/android/server/permission/access/MutateStateScope;
    .end local v18    # "$i$a$-mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$updatePermissionFlagsForAllApps$1":I
    nop

    .line 297
    :try_start_7
    invoke-static/range {v32 .. v32}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPersistence$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPersistence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/permission/access/AccessPersistence;->write(Lcom/android/server/permission/access/AccessState;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 298
    move-object/from16 v8, v32

    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :try_start_8
    invoke-static {v8, v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$setState$p(Lcom/android/server/permission/access/AccessCheckingService;Lcom/android/server/permission/access/AccessState;)V

    .line 299
    invoke-static {v8}, Lcom/android/server/permission/access/AccessCheckingService;->access$getPolicy$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessPolicy;

    move-result-object v1

    .line 3141
    .local v1, "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    const/4 v2, 0x0

    .line 299
    .local v2, "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    new-instance v3, Lcom/android/server/permission/access/GetStateScope;

    invoke-direct {v3, v0}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    invoke-virtual {v1, v3}, Lcom/android/server/permission/access/AccessPolicy;->onStateMutated(Lcom/android/server/permission/access/GetStateScope;)V

    .line 300
    .end local v1    # "$this$mutateState_u24lambda_u2424_u24lambda_u2423$iv":Lcom/android/server/permission/access/AccessPolicy;
    .end local v2    # "$i$a$-with-AccessCheckingService$mutateState$1$1$iv":I
    nop

    .end local v0    # "newState$iv":Lcom/android/server/permission/access/MutableAccessState;
    .end local v31    # "oldState$iv":Lcom/android/server/permission/access/AccessState;
    .end local v33    # "$i$a$-synchronized-AccessCheckingService$mutateState$1$iv":I
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 293
    monitor-exit v17

    .line 301
    nop

    .line 1540
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v16    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void

    .line 293
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v16    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_4
    move-exception v0

    goto :goto_4

    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_5
    move-exception v0

    move-object/from16 v8, v32

    .end local v32    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    goto :goto_4

    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :catchall_6
    move-exception v0

    move-object v8, v3

    .end local v3    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .restart local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    :goto_4
    monitor-exit v17

    throw v0

    .line 1516
    .end local v8    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v15    # "packageStates":Ljava/util/Map;
    .end local v16    # "$i$f$mutateState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    :catchall_7
    move-exception v0

    move-object v1, v0

    .end local v9    # "canUpdateSystemFlags":Z
    .end local v14    # "callingUid":I
    .end local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .end local p1    # "flagMask":I
    .end local p2    # "flagValues":I
    .end local p3    # "userId":I
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .restart local v9    # "canUpdateSystemFlags":Z
    .restart local v14    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/permission/access/permission/PermissionService;
    .restart local p1    # "flagMask":I
    .restart local p2    # "flagValues":I
    .restart local p3    # "userId":I
    :catchall_8
    move-exception v0

    invoke-static {v3, v1}, Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;->closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public writeLegacyPermissionStateTEMP()V
    .locals 0

    .line 2363
    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .locals 7
    .param p1, "legacyPermissionSettings"    # Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 2320
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService;->service:Lcom/android/server/permission/access/AccessCheckingService;

    .local v0, "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    const/4 v1, 0x0

    .line 287
    .local v1, "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    new-instance v2, Lcom/android/server/permission/access/GetStateScope;

    invoke-static {v0}, Lcom/android/server/permission/access/AccessCheckingService;->access$getState$p(Lcom/android/server/permission/access/AccessCheckingService;)Lcom/android/server/permission/access/AccessState;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "state"

    invoke-static {v3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    invoke-direct {v2, v3}, Lcom/android/server/permission/access/GetStateScope;-><init>(Lcom/android/server/permission/access/AccessState;)V

    .local v2, "$this$writeLegacyPermissionsTEMP_u24lambda_u24181":Lcom/android/server/permission/access/GetStateScope;
    const/4 v3, 0x0

    .line 2321
    .local v3, "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$writeLegacyPermissionsTEMP$1":I
    iget-object v4, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v4, "$this$writeLegacyPermissionsTEMP_u24lambda_u24181_u24lambda_u24179":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v5, 0x0

    .line 2321
    .local v5, "$i$a$-with-PermissionService$writeLegacyPermissionsTEMP$1$permissions$1":I
    invoke-virtual {v4, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissions(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v4

    .line 2322
    .end local v5    # "$i$a$-with-PermissionService$writeLegacyPermissionsTEMP$1$permissions$1":I
    .local v4, "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-direct {p0, v4}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissions(Ljava/util/List;)V

    .line 2323
    iget-object v5, p0, Lcom/android/server/permission/access/permission/PermissionService;->policy:Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;

    .line 2940
    .local v5, "$this$writeLegacyPermissionsTEMP_u24lambda_u24181_u24lambda_u24180":Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;
    const/4 v6, 0x0

    .line 2323
    .local v6, "$i$a$-with-PermissionService$writeLegacyPermissionsTEMP$1$permissionTrees$1":I
    invoke-virtual {v5, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPolicy;->getPermissionTrees(Lcom/android/server/permission/access/GetStateScope;)Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v5

    .line 2324
    .end local v6    # "$i$a$-with-PermissionService$writeLegacyPermissionsTEMP$1$permissionTrees$1":I
    .local v5, "permissionTrees":Lcom/android/server/permission/access/immutable/IndexedMap;
    invoke-direct {p0, v5}, Lcom/android/server/permission/access/permission/PermissionService;->toLegacyPermissions(Lcom/android/server/permission/access/immutable/IndexedMap;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->replacePermissionTrees(Ljava/util/List;)V

    .line 2325
    nop

    .line 287
    .end local v2    # "$this$writeLegacyPermissionsTEMP_u24lambda_u24181":Lcom/android/server/permission/access/GetStateScope;
    .end local v3    # "$i$a$-getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar-PermissionService$writeLegacyPermissionsTEMP$1":I
    .end local v4    # "permissions":Lcom/android/server/permission/access/immutable/IndexedMap;
    .end local v5    # "permissionTrees":Lcom/android/server/permission/access/immutable/IndexedMap;
    nop

    .line 2326
    .end local v0    # "this_$iv":Lcom/android/server/permission/access/AccessCheckingService;
    .end local v1    # "$i$f$getState$frameworks__base__services__permission__android_common__services_permission_pre_jarjar":I
    return-void
.end method
