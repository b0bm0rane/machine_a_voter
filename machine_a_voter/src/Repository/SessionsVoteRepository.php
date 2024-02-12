<?php

namespace App\Repository;

use App\Entity\SessionsVote;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<SessionsVote>
 *
 * @method SessionsVote|null find($id, $lockMode = null, $lockVersion = null)
 * @method SessionsVote|null findOneBy(array $criteria, array $orderBy = null)
 * @method SessionsVote[]    findAll()
 * @method SessionsVote[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class SessionsVoteRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, SessionsVote::class);
    }

//    /**
//     * @return SessionsVote[] Returns an array of SessionsVote objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('s.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?SessionsVote
//    {
//        return $this->createQueryBuilder('s')
//            ->andWhere('s.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
